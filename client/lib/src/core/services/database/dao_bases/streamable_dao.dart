import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

mixin StreamableDAO<T extends ViewableWithID> on DAOBase<T> {
  late final StreamableDAOProxy<T> streamingProxy = StreamableDAOProxy<T>(
    db: db,
    fromJson: fromJson,
  );

  StreamAllConfig<T> get baseStreamAllConfig;

  StreamCountConfig<T>? get baseStreamCountConfig => null;

  @protected
  StreamSingleByIdConfig<T> get baseStreamSingleByIdConfig;

  PaginatableStreamBase<T> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
  }) {
    return streamingProxy.streamAll(
      streamAllConfig: baseStreamAllConfig,
      streamCountConfig: baseStreamCountConfig,
      searchQuery: searchQuery,
      where: where,
      orderBy: orderBy,
    );
  }

  Stream<T?> streamSingleById({
    required String id,
  }) {
    return streamingProxy.streamSingleById(
      id: id,
      streamSingleByIdConfig: baseStreamSingleByIdConfig,
    );
  }
}

class StreamableDAOProxy<T extends ViewableWithID> extends DAOBase<T> {
  StreamableDAOProxy({
    required super.db,
    required super.fromJson,
  });

  PaginatableStreamBase<T> streamAll({
    required StreamAllConfig<T> streamAllConfig,
    StreamCountConfig<T>? streamCountConfig,
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    int? overrideTotalLimit,
  }) {
    final shareableParametersStream = Rx.combineLatest3(
      searchQuery ?? Stream.value(null),
      where ?? Stream.value(null),
      orderBy ?? Stream.value(null),
      (search, where, orderBy) => StreamableDAOParameters<T>(
        search: search,
        where: where,
        orderBy: orderBy,
      ),
    ).shareValue();

    final Stream<int?> countStream = _getCountStream(
      streamCountConfig,
      shareableParametersStream,
      overrideTotalLimit,
    );

    return PaginatableStream(
      pageSize: overrideTotalLimit ?? PaginatableStream.defaultPageSize,
      parametersStream: shareableParametersStream,
      factory: (request) => _streamAllFactory(
        streamAllConfig,
        countStream,
        request,
      ),
    );
  }

  Stream<int?> _getCountStream(
    StreamCountConfig? streamCountConfig,
    Stream<StreamableDAOParameters> parametersStream,
    int? overrideTotalLimit,
  ) {
    if (streamCountConfig == null) return Stream.value(null).shareValue();

    return parametersStream
        .map((p) => p.where)
        .distinct()
        .switchMap(
          (where) => graphQLClient.subscribeAndReturnParsed(
            streamCountConfig.operationOptions ??
                SubscriptionOptions(
                  document: streamCountConfig.document,
                  operationName: streamCountConfig.effectiveOperationName,
                  variables:
                      streamCountConfig.variables ??
                      {
                        'where':
                            where?.map((o) => o.queryToJson()).toList() ?? [],
                        'limit': overrideTotalLimit,
                      },
                  parserFn: streamCountConfig.parserFn ?? db.parser.countParser,
                ),
          ),
        );
  }

  Stream<PaginatableStreamResponse<T>> _streamAllFactory(
    StreamAllConfig<T> streamAllConfig,
    Stream<int?> countStream,
    PaginatableStreamRequest<T, StreamableDAOParameters<T>?> request,
  ) {
    return Rx.combineLatest2(
      graphQLClient.subscribeAndReturnParsed(
        streamAllConfig.operationOptions ??
            SubscriptionOptions(
              document: _getDocumentWithSecondLine(
                streamAllConfig,
                request.param?.orderBy,
              ),
              operationName: streamAllConfig.effectiveOperationName,
              variables: _getEffectiveStreamAllVars(streamAllConfig, request),
              parserFn:
                  streamAllConfig.parserFn ??
                  db.parser.singleListParser(
                    fromJson,
                    pageSize: request.pageSize,
                  ),
            ),
      ),
      countStream,
      (data, count) => PaginatableStreamResponse<T>(
        data: data.data,
        cursor: data.cursor,
        totalCount: count ?? data.totalCount,
      ),
    );
  }

  Json _getEffectiveStreamAllVars(
    StreamAllConfig<T> streamAllConfig,
    PaginatableStreamRequest<T, StreamableDAOParameters<T>?> request,
  ) {
    return streamAllConfig.variables ??
        streamAllConfig.transformRequest?.call(request) ??
        db.varsTransformer.transformrequestForPagination<T>(request);
  }

  dynamic _getDocumentWithSecondLine(
    StreamAllConfig<T> streamAllConfig, [
    List<OrderBy>? orderBy,
  ]) {
    final configDocument = streamAllConfig.document;

    final firstSelectionNodeName = configDocument.definitions
        .whereType<OperationDefinitionNode>()
        .first
        .firstSelectionNode
        .name
        .value;

    if (orderBy?.firstOrNull case final secondLine?) {
      return configDocument.withSelectionFields(
        {
          firstSelectionNodeName: {
            ...secondLine.getSecondLineField().fieldPath.asGQLSelectionNode(),
            ...?orderBy?.expand(
              (o) => o.field.orderByFieldPath.asGQLSelectionNode(),
            ),
          }.toList(),
        },
      );
    }

    return configDocument;
  }

  Stream<T?> streamSingleById({
    required String id,
    required StreamSingleByIdConfig<T> streamSingleByIdConfig,
  }) {
    return graphQLClient
        .subscribe(
          streamSingleByIdConfig.operationOptions ??
              SubscriptionOptions(
                document: streamSingleByIdConfig.document,
                operationName: streamSingleByIdConfig.effectiveOperationName,
                variables:
                    streamSingleByIdConfig.variables ??
                    streamSingleByIdConfig.varsConstructor?.call(
                      id: id.toUuid(),
                    ) ??
                    {},
                parserFn:
                    streamSingleByIdConfig.parserFn ??
                    db.parser.singleOrNullParser(fromJson),
              ),
        )
        .map((p) => p.parsedData);
  }
}
