import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

class DBGraphQLClient extends GraphQLClient {
  DBGraphQLClient({
    required ValueStream<bool> connectivityStream,
    required super.link,
    required super.cache,
    this.autoChangeFetchPolicy = true,
    super.alwaysRebroadcast,
    super.defaultPolicies,
  }) : _fetchPolicyStream = connectivityStream
            .map(
              (connected) =>
                  connected ? FetchPolicy.networkOnly : FetchPolicy.cacheFirst,
            )
            .distinct()
            .shareValueSeeded(FetchPolicy.cacheAndNetwork);

  final bool autoChangeFetchPolicy;

  final ValueStream<FetchPolicy> _fetchPolicyStream;
  FetchPolicy get _currentFetchPolicy => _fetchPolicyStream.value;

  Q _exceptionsMiddleware<T, Q extends QueryResult<T>>(Q result) {
    if (result.hasException) {
      throw result.exception!;
    }
    return result;
  }

  VarsType getDefaultSearchVars<VarsType, BoolExp, T extends Viewable>(
    GQLPaginatableStreamEvent<T> event,
    VarsConstructor<VarsType, BoolExp> varsConstructor,
    BoolExpConstructor<BoolExp> boolExpConstructor,
  ) {
    final instance = event.instance;
    final offset = event.offset;
    final search = event.search;
    final lastSearch = event.lastSearch;

    return varsConstructor(
      limit: instance.limit + 1,
      where: [
        if (search != null && search.isNotEmpty)
          boolExpConstructor(
            name: Input$StringComparisonExp(
              $_ilike: '%$search%',
            ),
          ),
        if (lastSearch == search && offset > 0)
          boolExpConstructor(
            name: Input$StringComparisonExp(
              $_gt: instance
                  .currentValue[
                      (offset - 1) * instance.limit + instance.limit - 1]
                  .name,
            ),
          ),
      ],
    );
  }

  @override
  Future<QueryResult<TParsed>> mutate<TParsed>(
    MutationOptions<TParsed> options, {
    bool? autoChangeFetchPolicy,
  }) async {
    late final Future<QueryResult<TParsed>> future;

    if (autoChangeFetchPolicy ?? this.autoChangeFetchPolicy) {
      future = super.mutate(
        options.copyWithPolicies(
          options.policies.copyWith(fetch: _currentFetchPolicy),
        ),
      );
    } else {
      future = super.mutate(options);
    }

    return future.then(_exceptionsMiddleware);
  }

  Future<T?> mutateAndReturnParsedNullable<T>(
    MutationOptions<T?> options, {
    bool? autoChangeFetchPolicy,
  }) async {
    return mutate(options, autoChangeFetchPolicy: autoChangeFetchPolicy)
        .then((r) => r.parsedData);
  }

  Future<T> mutateAndReturnParsed<T>(
    MutationOptions<T> options, {
    bool? autoChangeFetchPolicy,
  }) async {
    return mutate(options, autoChangeFetchPolicy: autoChangeFetchPolicy)
        .then((r) => r.parsedData!);
  }

  @override
  Stream<QueryResult<TParsed>> subscribe<TParsed>(
    SubscriptionOptions<TParsed> options, {
    bool? autoChangeFetchPolicy,
  }) {
    late final Stream<QueryResult<TParsed>> stream;

    if (autoChangeFetchPolicy ?? this.autoChangeFetchPolicy) {
      stream = _fetchPolicyStream.switchMap(
        (fp) => super.subscribe(
          options.copyWithPolicies(
            options.policies.copyWith(fetch: fp),
          ),
        ),
      );
    } else {
      stream = super.subscribe(options);
    }

    return stream.map(_exceptionsMiddleware);
  }

  Stream<T?> subscribeAndReturnParsedNullable<T>(
    SubscriptionOptions<T?> options, {
    bool? autoChangeFetchPolicy,
  }) {
    return subscribe(options, autoChangeFetchPolicy: autoChangeFetchPolicy)
        .map((r) => r.parsedData);
  }

  Stream<T> subscribeAndReturnParsed<T>(
    SubscriptionOptions<T> options,
  ) {
    return subscribe(options).map((r) => r.parsedData!);
  }

  Stream<T?> watchQueryAndReturnParsedNullable<T>(
    WatchQueryOptions<T?> options,
  ) {
    return watchQuery(options)
        .stream
        .map(_exceptionsMiddleware)
        .map((r) => r.parsedData);
  }

  Stream<T> watchQueryAndReturnParsed<T>(
    WatchQueryOptions<T> options,
  ) {
    return watchQuery(options)
        .stream
        .map(_exceptionsMiddleware)
        .map((r) => r.parsedData!);
  }

  @override
  Future<QueryResult<TParsed>> query<TParsed>(
    QueryOptions<TParsed> options, {
    bool? autoChangeFetchPolicy,
  }) async {
    late final Future<QueryResult<TParsed>> future;

    if (autoChangeFetchPolicy ?? this.autoChangeFetchPolicy) {
      future = super.query(
        options.copyWithPolicies(
          options.policies.copyWith(fetch: _currentFetchPolicy),
        ),
      );
    } else {
      future = super.query(options);
    }

    return future.then(_exceptionsMiddleware);
  }

  Future<T?> queryAndReturnParsedNullable<T>(
    QueryOptions<T?> options, {
    bool? autoChangeFetchPolicy,
  }) async {
    return query(options, autoChangeFetchPolicy: autoChangeFetchPolicy)
        .then((r) => r.parsedData);
  }

  Future<T> queryAndReturnParsed<T>(
    QueryOptions<T> options, {
    bool? autoChangeFetchPolicy,
  }) async {
    return query(options, autoChangeFetchPolicy: autoChangeFetchPolicy)
        .then((r) => r.parsedData!);
  }
}

typedef VarsConstructor<T, BoolExp> = T Function({
  int limit,
  List<BoolExp> where,
});

typedef BoolExpConstructor<T> = T Function({
  Input$StringComparisonExp? name,
});
