part of '../database_repository.dart';

class ServicesQueries {
  ServicesQueries._();

  DelegatingPaginatableStream<Service> getServicesStream() {
    return DelegatingPaginatableStream<Service>(
      onQuery: (instance, offset) {
        final Stream<QueryResult<Iterable<Service>>> subscriptionStream;

        final GetServicesStreamSubscription subscription =
            GetServicesStreamSubscription(
          variables: GetServicesStreamArguments(
            limit: instance.limit,
          ),
        );

        subscriptionStream = GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => GetServicesStream$SubscriptionRoot.fromJson(d)
                .services
                .map((e) => Service.fromJson(e.toJson())),
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
