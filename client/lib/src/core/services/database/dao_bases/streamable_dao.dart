import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/transformers.dart';

mixin StreamableDAO<T extends ViewableWithID, TBoolExp, TOrderByExp>
    on DAOBase<T> {
  late final StreamableDAOProxy<T, TBoolExp, TOrderByExp> streamingProxy =
      StreamableDAOProxy<T, TBoolExp, TOrderByExp>(db: db, fromJson: fromJson);

  StreamAllConfig<T, TBoolExp, TOrderByExp> get baseStreamAllConfig;

  StreamCountConfig<T, TBoolExp>? get baseStreamCountConfig => null;

  @protected
  StreamSingleByIdConfig<T> get baseStreamSingleByIdConfig;

  PaginatableStreamBase<T> streamAll({
    Stream<String?>? searchQuery,
    List<TBoolExp>? where,
    List<TOrderByExp>? orderBy,
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

class StreamableDAOProxy<T extends ViewableWithID, TBoolExp, TOrderByExp>
    extends DAOBase<T> {
  StreamableDAOProxy({
    required super.db,
    required super.fromJson,
    String? secondLineFieldNameOverride,
  }) : _secondLineFieldNameOverride = secondLineFieldNameOverride;

  final String? _secondLineFieldNameOverride;

  String? get secondLineFieldName =>
      _secondLineFieldNameOverride ??
      UserSettingsService.I.getSecondLineFor<T>();

  PaginatableStreamBase<T> streamAll({
    required StreamAllConfig<T, TBoolExp, TOrderByExp> streamAllConfig,
    StreamCountConfig<T, TBoolExp>? streamCountConfig,
    Stream<String?>? searchQuery,
    List<TBoolExp>? where,
    List<TOrderByExp>? orderBy,
  }) {
    final countStream = streamCountConfig != null
        ? graphQLClient.subscribeAndReturnParsed(
            streamCountConfig.operationOptions ??
                SubscriptionOptions(
                  document: streamCountConfig.document,
                  operationName: streamCountConfig.effectiveOperationName,
                  variables: {
                    'where': where
                            ?.map(
                              (o) => (o as dynamic).toJson() as Json,
                            )
                            .toList() ??
                        [],
                  },
                  parserFn: streamCountConfig.parserFn ?? db.parser.countParser,
                ),
          )
        : Stream.value(null);

    Stream<PaginatableStreamResponse<T>> streamFactory(
      PaginatableStreamRequest<T> request,
    ) {
      return graphQLClient
          .subscribeAndReturnParsed(
            streamAllConfig.operationOptions ??
                SubscriptionOptions(
                  document: _getDocumentWithSecondLine(streamAllConfig),
                  operationName: streamAllConfig.effectiveOperationName,
                  variables: _getEffectiveStreamAllVars(
                    streamAllConfig,
                    request,
                    where,
                    orderBy,
                  ),
                  parserFn: streamAllConfig.parserFn ??
                      db.parser.singleListParser(
                        fromJson,
                        pageSize: request.pageSize,
                      ),
                ),
          )
          .withLatestFrom(
            countStream,
            (data, count) => PaginatableStreamResponse<T>(
              data: data.data,
              cursor: data.cursor,
              totalCount: count ?? data.totalCount,
            ),
          );
    }

    if (searchQuery == null) {
      return PaginatableStream<T>(factory: streamFactory);
    }

    return PaginatableStream<T>.withSearch(
      searchStream: searchQuery,
      factory: streamFactory,
    );
  }

  Json _getEffectiveStreamAllVars(
    StreamAllConfig<T, TBoolExp, TOrderByExp> streamAllConfig,
    PaginatableStreamRequest<T> request,
    List<TBoolExp>? where,
    List<TOrderByExp>? orderBy,
  ) {
    return streamAllConfig.variables ??
        streamAllConfig.transformVars?.call(
          request: request,
          where: where,
          orderBy: orderBy,
        ) ??
        db.varsTransformer.transformVariablesForPagination<T>(
          request,
          where:
              where?.map((o) => (o as dynamic).toJson() as Json).toList() ?? [],
          orderBy:
              orderBy?.map((o) => (o as dynamic).toJson() as Json).toList() ??
                  [
                    {'name': 'ASC'},
                  ],
        );
  }

  dynamic _getDocumentWithSecondLine(
    StreamAllConfig<T, TBoolExp, TOrderByExp> streamAllConfig,
  ) {
    final configDocument = streamAllConfig.document;

    if (secondLineFieldName == null) {
      return configDocument;
    }

    final firstSelectionNodeName = configDocument.definitions
        .whereType<OperationDefinitionNode>()
        .first
        .firstSelectionNode
        .name
        .value;

    return configDocument.withSelectionFields(
      {
        firstSelectionNodeName: [
          FieldNode(name: NameNode(value: secondLineFieldName!)),
        ],
      },
    );
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
                variables: streamSingleByIdConfig.variables ??
                    streamSingleByIdConfig.varsConstructor
                        ?.call(id: id.toUuid()) ??
                    {},
                parserFn: streamSingleByIdConfig.parserFn ??
                    db.parser.singleOrNullParser(fromJson),
              ),
        )
        .map((p) => p.parsedData);
  }
}
