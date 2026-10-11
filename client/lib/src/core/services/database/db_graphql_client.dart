import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

class DBGraphQLClient extends GraphQLClient {
  static DocumentNode _keepDocument(DocumentNode document) => document;

  final bool autoChangeFetchPolicy;

  final DocumentNode Function(DocumentNode document) _transformDocument;
  final ValueStream<FetchPolicy> _fetchPolicyStream;
  FetchPolicy get _currentFetchPolicy => _fetchPolicyStream.value;
  DBGraphQLClient({
    required ValueStream<bool> connectivityStream,
    required super.link,
    required super.cache,
    this.autoChangeFetchPolicy = true,
    DocumentNode Function(DocumentNode document)? transformDocument,
    super.alwaysRebroadcast,
    super.defaultPolicies,
  }) : _transformDocument = transformDocument ?? _keepDocument,
       _fetchPolicyStream = connectivityStream
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

  QueryOptions<TParsed> _withTransformedQueryDocument<TParsed>(
    QueryOptions<TParsed> options,
  ) {
    final document = _transformDocument(options.document);

    return identical(document, options.document)
        ? options
        : options.copyWithOptions(document: document);
  }

  MutationOptions<TParsed> _withTransformedMutationDocument<TParsed>(
    MutationOptions<TParsed> options,
  ) {
    final document = _transformDocument(options.document);

    return identical(document, options.document)
        ? options
        : MutationOptions<TParsed>(
            document: document,
            operationName: options.operationName,
            variables: options.variables,
            fetchPolicy: options.fetchPolicy,
            errorPolicy: options.errorPolicy,
            cacheRereadPolicy: options.cacheRereadPolicy,
            context: options.context,
            optimisticResult: options.optimisticResult,
            onCompleted: options.onCompleted,
            update: options.update,
            onError: options.onError,
            parserFn: options.parserFn,
            queryRequestTimeout: options.queryRequestTimeout,
          );
  }

  SubscriptionOptions<TParsed> _withTransformedSubscriptionDocument<TParsed>(
    SubscriptionOptions<TParsed> options,
  ) {
    final document = _transformDocument(options.document);

    return identical(document, options.document)
        ? options
        : SubscriptionOptions<TParsed>(
            document: document,
            operationName: options.operationName,
            variables: options.variables,
            fetchPolicy: options.fetchPolicy,
            errorPolicy: options.errorPolicy,
            cacheRereadPolicy: options.cacheRereadPolicy,
            optimisticResult: options.optimisticResult,
            context: options.context,
            parserFn: options.parserFn,
            queryRequestTimeout: options.queryRequestTimeout,
          );
  }

  @override
  ObservableQuery<TParsed> watchQuery<TParsed>(
    WatchQueryOptions<TParsed> options,
  ) {
    final document = _transformDocument(options.document);

    return super.watchQuery(
      identical(document, options.document)
          ? options
          : options.copyWith(document: document),
    );
  }

  @override
  Future<QueryResult<TParsed>> mutate<TParsed>(
    MutationOptions<TParsed> options, {
    bool? autoChangeFetchPolicy,
  }) async {
    final transformedOptions = _withTransformedMutationDocument(options);
    final future = autoChangeFetchPolicy ?? this.autoChangeFetchPolicy
        ? super.mutate(
            transformedOptions.copyWithPolicies(
              transformedOptions.policies.copyWith(fetch: _currentFetchPolicy),
            ),
          )
        : super.mutate(transformedOptions);

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
    final transformedOptions = _withTransformedSubscriptionDocument(options);
    final stream = autoChangeFetchPolicy ?? this.autoChangeFetchPolicy
        ? _fetchPolicyStream.switchMap(
            (fp) => super.subscribe(
              transformedOptions.copyWithPolicies(
                transformedOptions.policies.copyWith(fetch: fp),
              ),
            ),
          )
        : super.subscribe(transformedOptions);

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
    final transformedOptions = _withTransformedQueryDocument(options);
    final future = autoChangeFetchPolicy ?? this.autoChangeFetchPolicy
        ? super.query(
            transformedOptions.copyWithPolicies(
              transformedOptions.policies.copyWith(fetch: _currentFetchPolicy),
            ),
          )
        : super.query(transformedOptions);

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
