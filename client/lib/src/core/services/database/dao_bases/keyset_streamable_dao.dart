import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

mixin KeysetStreamableDAO<T extends ViewableWithID> on DAOBase<T>
    implements StreamableDAO<T> {
  @override
  StreamAllConfig<T> get baseStreamAllConfig;

  @protected
  StreamSingleByIdConfig<T> get baseStreamSingleByIdConfig;

  @override
  PaginatableStreamBase<T> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
  }) => streamAllWithConfig(
    streamAllConfig: baseStreamAllConfig,
    searchQuery: searchQuery,
    where: where,
    orderBy: orderBy,
    secondLineField: secondLineField,
  );

  @override
  PaginatableStreamBase<T> streamAllWithConfig({
    required covariant StreamAllConfig<T> streamAllConfig,
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
    int? overrideTotalLimit,
  }) => KeysetPaginatedStream<T, StreamableDAOParameters<T>>(
    registry: db.liveQueries,
    totalLimit: overrideTotalLimit,
    parametersStream: StreamableDAOParameters.combineLatest<T>(
      searchQuery: searchQuery,
      where: where,
      orderBy: orderBy,
      secondLineField: secondLineField,
    ).distinct(),
    fetchChunk: (parameters, chunk) => _pageQuery(
      streamAllConfig,
      parameters,
    ).fetch(variables: streamAllConfig.variablesFor(parameters), chunk: chunk),
  );

  @override
  Future<List<T>> query({
    bool onlineFirst = false,
    String? searchQuery,
    List<Filter>? where,
    List<OrderBy>? orderBy,
    int? limit,
  }) async {
    final config = baseStreamAllConfig;
    final parameters = StreamableDAOParameters<T>(
      search: searchQuery,
      where: where?.whereEnabled(),
      orderBy: orderBy?.whereEnabled(),
    );
    final pageQuery = _pageQuery(config, parameters);
    final fetchPolicy = graphQLClient.queryFetchPolicy(
      onlineFirst: onlineFirst,
    );
    final chunks = await KeysetPageQuery.fetchChained(
      rows: limit ?? PaginatableStream.defaultPageSize,
      after: null,
      maxPageSize: AshPagination.maxPageSize,
      fetchChunk: (first, after) => pageQuery.fetch(
        variables: config.variablesFor(parameters),
        chunk: KeysetChunkRequest(
          first: first,
          after: after,
          fetchPolicy: fetchPolicy,
        ),
      ),
    );

    return [for (final chunk in chunks) ...chunk.page.items];
  }

  @override
  Stream<T?> streamSingleById({required String id}) =>
      streamSingleByIdWithConfig(
        id: id,
        streamSingleByIdConfig: baseStreamSingleByIdConfig,
      );

  Stream<T?> streamSingleByIdWithConfig({
    required String id,
    required StreamSingleByIdConfig<T> streamSingleByIdConfig,
  }) {
    final document = transformDocument(streamSingleByIdConfig.document);

    return LiveQuery<T?>(
      client: graphQLClient,
      registry: db.liveQueries,
      kind: LiveQueryKind.entity,
      options: WatchQueryOptions(
        document: document,
        operationName: streamSingleByIdConfig.effectiveOperationName,
        variables: streamSingleByIdConfig.variablesFor(id),
        parserFn:
            streamSingleByIdConfig.parserFn ??
            AshResultParser(document).entity(fromJson),
      ),
    );
  }

  KeysetPageQuery<T> _pageQuery(
    StreamAllConfig<T> config,
    StreamableDAOParameters<T>? parameters,
  ) => KeysetPageQuery(
    client: graphQLClient,
    document: transformDocument(config.document, parameters: parameters),
    operationName: config.effectiveOperationName,
    fromJson: fromJson,
  );
}
