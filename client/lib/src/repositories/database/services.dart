part of '../database_repository.dart';

class ServicesQueries {
  ServicesQueries._();

  GQLPaginatableStream<Service> getServicesStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Service>(
      searchQuery: searchQuery,
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        final bool nameSearch = search != null && search.isNotEmpty;
        final nameSearchExp = StringComparisonExp($ilike: '%$search%');

        final GetServicesStreamSubscription subscription =
            GetServicesStreamSubscription(
          variables: GetServicesStreamArguments(
            limit: instance.limit + 1,
            addWhere: [
              if (nameSearch)
                ServicesBoolExp(
                  $or: [
                    ServicesBoolExp(
                      name: nameSearchExp,
                    ),
                    ServicesBoolExp(
                      classes: ClassesBoolExp(
                        name: nameSearchExp,
                      ),
                    ),
                    ServicesBoolExp(
                      groups: GroupsBoolExp(
                        name: nameSearchExp,
                      ),
                    ),
                  ],
                ),
              if (lastSearch == search && offset > 0)
                ServicesBoolExp(
                  name: StringComparisonExp(
                    $gt: instance
                        .currentValue[
                            (offset - 1) * instance.limit + instance.limit - 1]
                        .name,
                  ),
                ),
            ],
            classesAddWhere: [
              if (nameSearch)
                ClassesBoolExp(
                  name: nameSearchExp,
                )
            ],
            groupsAddWhere: [
              if (nameSearch)
                GroupsBoolExp(
                  name: nameSearchExp,
                ),
            ],
          ),
        );

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => _parseListOfT(d, Service.fromJson),
          ),
        );
      },
    );
  }
}
