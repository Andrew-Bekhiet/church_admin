import 'package:church_admin/church_admin.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

mixin StreamableDAO<T extends ViewableWithID, TBoolExp> on DAOBase<T> {
  @protected
  late final StreamableDAOProxy<T, TBoolExp> streamingProxy =
      StreamableDAOProxy<T, TBoolExp>(db: db, fromJson: fromJson);

  @protected
  StreamAllConfig<T, TBoolExp> get baseStreamAllConfig;

  @protected
  StreamSingleByIdConfig<T> get baseStreamSingleByIdConfig;

  GQLPaginatableStream<T> streamAll({
    Stream<String?>? searchQuery,
    List<TBoolExp>? where,
  }) {
    return streamingProxy.streamAll(
      searchQuery: searchQuery,
      where: where,
      streamAllConfig: baseStreamAllConfig,
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

class StreamableDAOProxy<T extends ViewableWithID, TBoolExp>
    extends DAOBase<T> {
  StreamableDAOProxy({required super.db, required super.fromJson});

  GQLPaginatableStream<T> streamAll({
    required StreamAllConfig<T, TBoolExp> streamAllConfig,
    Stream<String?>? searchQuery,
    List<TBoolExp>? where,
  }) {
    return GQLPaginatableStream<T>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) =>
          graphQLClient.subscribeAndReturnParsed(
        streamAllConfig.operationOptions ??
            SubscriptionOptions(
              document: streamAllConfig.document,
              operationName: streamAllConfig.effectiveOperationName,
              variables: streamAllConfig.variables ??
                  streamAllConfig.varsConstructor?.call(
                    event: event,
                    where: where ?? [],
                  ) ??
                  {},
              parserFn: streamAllConfig.parserFn ??
                  db.parser.singleListParser(fromJson),
            ),
      ),
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
