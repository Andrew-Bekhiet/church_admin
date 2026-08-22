import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

class DBGraphQLClient extends GraphQLClient {
  final bool autoChangeFetchPolicy;

  final ValueStream<FetchPolicy> _fetchPolicyStream;
  FetchPolicy get _currentFetchPolicy => _fetchPolicyStream.value;
  DBGraphQLClient({
    required ValueStream<bool> connectivityStream,
    required super.link,
    required super.cache,
    this.autoChangeFetchPolicy = true,
    super.alwaysRebroadcast,
    super.defaultPolicies,
  }) : _fetchPolicyStream = connectivityStream
           .map(
             (connected) => connected
                 ? FetchPolicy.cacheAndNetwork
                 : FetchPolicy.cacheFirst,
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
    bool? autoChangeFetchPolicy,
  }) async {
    final future = autoChangeFetchPolicy ?? this.autoChangeFetchPolicy
        ? super.query(
            options.copyWithPolicies(
              options.policies.copyWith(fetch: _currentFetchPolicy),
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
    bool? autoChangeFetchPolicy,
  }) {
    return query(
      options,
      autoChangeFetchPolicy: autoChangeFetchPolicy,
    ).then((r) => r.parsedData!);
  }
}
