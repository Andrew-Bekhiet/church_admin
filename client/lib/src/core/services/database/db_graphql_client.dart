import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

class DBGraphQLClient extends GraphQLClient {
  static FetchPolicy _fetchPolicyFor(
    bool? connected, {
    required FetchPolicy whenConnected,
  }) => connected == false ? FetchPolicy.cacheFirst : whenConnected;

  final bool autoChangeFetchPolicy;

  final ValueStream<bool> _connectivityStream;
  final ValueStream<FetchPolicy> _fetchPolicyStream;
  FetchPolicy get _currentFetchPolicy => _fetchPolicyStream.value;
  FetchPolicy get _onlineFirstFetchPolicy => _fetchPolicyFor(
    _connectivityStream.valueOrNull,
    whenConnected: FetchPolicy.networkOnly,
  );
  DBGraphQLClient({
    required ValueStream<bool> connectivityStream,
    required super.link,
    required super.cache,
    this.autoChangeFetchPolicy = true,
    super.alwaysRebroadcast,
    super.defaultPolicies,
  }) : _connectivityStream = connectivityStream,
       _fetchPolicyStream = connectivityStream
           .map(
             (connected) => _fetchPolicyFor(
               connected,
               whenConnected: FetchPolicy.cacheAndNetwork,
             ),
           )
           .distinct()
           .shareValueSeeded(FetchPolicy.cacheAndNetwork);

  Q _exceptionsMiddleware<T, Q extends QueryResult<T>>(Q result) {
    switch (result.exception) {
      case null ||
          OperationException(
            linkException: UnexpectedResponseStructureException(),
          ):
        return result;

      case final exception:
        throw exception;
    }
  }

  @override
  Future<QueryResult<TParsed>> mutate<TParsed>(
    MutationOptions<TParsed> options, {
    bool? autoChangeFetchPolicy,
  }) async {
    final future = autoChangeFetchPolicy ?? this.autoChangeFetchPolicy
        ? super.mutate(
            options.copyWithPolicies(
              options.policies.copyWith(fetch: _currentFetchPolicy),
            ),
          )
        : super.mutate(options);

    return future.then(_exceptionsMiddleware);
  }

  Future<T?> mutateAndReturnParsedNullable<T>(
    MutationOptions<T?> options, {
    bool? autoChangeFetchPolicy,
  }) {
    return mutate(
      options,
      autoChangeFetchPolicy: autoChangeFetchPolicy,
    ).then((r) => r.parsedData);
  }

  Future<T> mutateAndReturnParsed<T>(
    MutationOptions<T> options, {
    bool? autoChangeFetchPolicy,
  }) {
    return mutate(
      options,
      autoChangeFetchPolicy: autoChangeFetchPolicy,
    ).then((r) => r.parsedData!);
  }

  @override
  Stream<QueryResult<TParsed>> subscribe<TParsed>(
    SubscriptionOptions<TParsed> options, {
    bool? autoChangeFetchPolicy,
  }) {
    final stream = autoChangeFetchPolicy ?? this.autoChangeFetchPolicy
        ? _fetchPolicyStream.switchMap(
            (fp) => super.subscribe(
              options.copyWithPolicies(
                options.policies.copyWith(fetch: fp),
              ),
            ),
          )
        : super.subscribe(options);

    return stream.map(_exceptionsMiddleware);
  }

  Stream<T?> subscribeAndReturnParsedNullable<T>(
    SubscriptionOptions<T?> options, {
    bool? autoChangeFetchPolicy,
  }) {
    return subscribe(
      options,
      autoChangeFetchPolicy: autoChangeFetchPolicy,
    ).map((r) => r.parsedData);
  }

  Stream<T> subscribeAndReturnParsed<T>(
    SubscriptionOptions<T> options,
  ) {
    return subscribe(options).map((r) => r.parsedData!);
  }

  Stream<T?> watchQueryAndReturnParsedNullable<T>(
    WatchQueryOptions<T?> options,
  ) {
    return watchQuery(
      options,
    ).stream.map(_exceptionsMiddleware).map((r) => r.parsedData);
  }

  Stream<T> watchQueryAndReturnParsed<T>(
    WatchQueryOptions<T> options,
  ) {
    return watchQuery(
      options,
    ).stream.map(_exceptionsMiddleware).map((r) => r.parsedData!);
  }

  @override
  Future<QueryResult<TParsed>> query<TParsed>(
    QueryOptions<TParsed> options, {
    bool onlineFirst = false,
    bool? autoChangeFetchPolicy,
  }) async {
    final fetchPolicy = switch (onlineFirst) {
      true => _onlineFirstFetchPolicy,
      false when autoChangeFetchPolicy ?? this.autoChangeFetchPolicy =>
        _currentFetchPolicy,
      false => null,
    };
    final future = fetchPolicy != null
        ? super.query(
            options.copyWithPolicies(
              options.policies.copyWith(fetch: fetchPolicy),
            ),
          )
        : super.query(options);

    return future.then(_exceptionsMiddleware);
  }

  Future<T?> queryAndReturnParsedNullable<T>(
    QueryOptions<T?> options, {
    bool? autoChangeFetchPolicy,
  }) {
    return query(
      options,
      autoChangeFetchPolicy: autoChangeFetchPolicy,
    ).then((r) => r.parsedData);
  }

  Future<T> queryAndReturnParsed<T>(
    QueryOptions<T> options, {
    bool onlineFirst = false,
    bool? autoChangeFetchPolicy,
  }) {
    return query(
      options,
      autoChangeFetchPolicy: autoChangeFetchPolicy,
      onlineFirst: onlineFirst,
    ).then((r) => r.parsedData!);
  }
}
