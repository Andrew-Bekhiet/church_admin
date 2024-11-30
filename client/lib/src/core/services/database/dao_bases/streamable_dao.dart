import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

mixin StreamableDAO<T extends ViewableWithID, TBoolExp, TOrderByExp>
    on DAOBase<T> {
  late final StreamableDAOProxy<T, TBoolExp, TOrderByExp> streamingProxy =
      StreamableDAOProxy<T, TBoolExp, TOrderByExp>(db: db, fromJson: fromJson);

  StreamAllConfig<T, TBoolExp, TOrderByExp> get baseStreamAllConfig;

  @protected
  StreamSingleByIdConfig<T> get baseStreamSingleByIdConfig;

  GQLPaginatableStream<T> streamAll({
    Stream<String?>? searchQuery,
    List<TBoolExp>? where,
    List<TOrderByExp>? orderBy,
  }) {
    return streamingProxy.streamAll(
      streamAllConfig: baseStreamAllConfig,
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

  GQLPaginatableStream<T> streamAll({
    required StreamAllConfig<T, TBoolExp, TOrderByExp> streamAllConfig,
    Stream<String?>? searchQuery,
    List<TBoolExp>? where,
    List<TOrderByExp>? orderBy,
  }) {
    return GQLPaginatableStream<T>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) =>
          graphQLClient.subscribeAndReturnParsed(
        streamAllConfig.operationOptions ??
            SubscriptionOptions(
              document: _getDocumentWithSecondLine(streamAllConfig),
              operationName: streamAllConfig.effectiveOperationName,
              variables: _getEffectiveStreamAllVars(
                streamAllConfig,
                event,
                where,
                orderBy,
              ),
              parserFn: streamAllConfig.parserFn ??
                  db.parser.singleListParser(fromJson),
            ),
      ),
    );
  }

  Json _getEffectiveStreamAllVars(
    StreamAllConfig<T, TBoolExp, TOrderByExp> streamAllConfig,
    GQLPaginatableStreamEvent<T> event,
    List<TBoolExp>? where,
    List<TOrderByExp>? orderBy,
  ) {
    return streamAllConfig.variables ??
        streamAllConfig.transformVars?.call(
          event: event,
          where: where,
          orderBy: orderBy,
        ) ??
        db.varsTransformer.transformVariablesForPagination<T>(
          event,
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
