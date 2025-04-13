import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

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
    Stream<List<TBoolExp>>? where,
    Stream<List<TOrderByExp>>? orderBy,
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
    Stream<List<TBoolExp>>? where,
    Stream<List<TOrderByExp>>? orderBy,
  }) {
    final shareableParametersStream = Rx.combineLatest3(
      searchQuery ?? Stream.value(null),
      where ?? Stream.value(null),
      orderBy ?? Stream.value(null),
      (search, where, orderBy) =>
          StreamableDAOParameters<T, TBoolExp, TOrderByExp>(
        search: search,
        where: where,
        orderBy: orderBy,
      ),
    ).shareValue();

    final Stream<int?> countStream =
        _getCountStream(streamCountConfig, shareableParametersStream);

    return PaginatableStream(
      parametersStream: shareableParametersStream,
      factory: (request) =>
          _streamAllFactory(streamAllConfig, countStream, request),
    );
  }

  ValueStream<int?> _getCountStream(
    StreamCountConfig? streamCountConfig,
    Stream<StreamableDAOParameters>? parametersStream,
  ) {
    if (streamCountConfig == null) return Stream.value(null).shareValue();

    return (parametersStream ?? Stream<StreamableDAOParameters?>.value(null))
        .map((p) => p?.where)
        .distinct()
        .switchMap(
          (where) => graphQLClient.subscribeAndReturnParsed(
            streamCountConfig.operationOptions ??
                SubscriptionOptions(
                  document: streamCountConfig.document,
                  operationName: streamCountConfig.effectiveOperationName,
                  variables: streamCountConfig.variables ??
                      {
                        'where': where
                                ?.map(
                                  (o) => (o as dynamic).toJson() as Json,
                                )
                                .toList() ??
                            [],
                      },
                  parserFn: streamCountConfig.parserFn ?? db.parser.countParser,
                ),
          ),
        )
        .shareValue();
  }

  Stream<PaginatableStreamResponse<T>> _streamAllFactory(
    StreamAllConfig<T, TBoolExp, TOrderByExp> streamAllConfig,
    Stream<int?> countStream,
    PaginatableStreamRequest<T,
            StreamableDAOParameters<T, TBoolExp, TOrderByExp>?>
        request,
  ) {
    return graphQLClient
        .subscribeAndReturnParsed(
          streamAllConfig.operationOptions ??
              SubscriptionOptions(
                document: _getDocumentWithSecondLine(streamAllConfig),
                operationName: streamAllConfig.effectiveOperationName,
                variables: _getEffectiveStreamAllVars(streamAllConfig, request),
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

  Json _getEffectiveStreamAllVars(
    StreamAllConfig<T, TBoolExp, TOrderByExp> streamAllConfig,
    PaginatableStreamRequest<T,
            StreamableDAOParameters<T, TBoolExp, TOrderByExp>?>
        request,
  ) {
    return streamAllConfig.variables ??
        streamAllConfig.transformRequest?.call(request) ??
        db.varsTransformer.transformrequestForPagination<T>(request);
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
