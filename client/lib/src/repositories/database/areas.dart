part of '../database_repository.dart';

class AreasQueries {
  AreasQueries._();

  DelegatingPaginatableStream<Area> getAreasStream() {
    return DelegatingPaginatableStream<Area>(
      onQuery: (instance, offset) {
        final Stream<QueryResult<Iterable<Area>>> subscriptionStream;

        final GetAreasStreamSubscription subscription =
            GetAreasStreamSubscription(
          variables: GetAreasStreamArguments(
            limit: instance.limit,
          ),
        );

        subscriptionStream = GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => GetAreasStream$SubscriptionRoot.fromJson(d)
                .areas
                .map((e) => Area.fromJson(e.toJson())),
          ),
        );

        return subscriptionStream.map(_exceptionsMiddleware).map(
              (event) => _clampResults(
                null,
                null,
                offset,
                instance,
                event.parsedData!.toList(),
              ),
            );
      },
    );
  }
}
