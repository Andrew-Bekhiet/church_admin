part of '../database_service.dart';

class GroupsQueries {
  const GroupsQueries._();

  GQLPaginatableStream<Group> getGroupsStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Group>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetGroupsStream,
            operationName: 'getGroupsStream',
            variables: Variables$Subscription$getGroupsStream(
              limit: instance.limit + 1,
              where: [
                if (search != null && search.isNotEmpty)
                  Input$GroupsBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$GroupsBoolExp(
                    name: Input$StringComparisonExp(
                      $_gt: instance
                          .currentValue[(offset - 1) * instance.limit +
                              instance.limit -
                              1]
                          .name,
                    ),
                  ),
              ],
            ).toJson(),
            parserFn: (d) => _parseListOfT(d, Group.fromJson),
          ),
        );
      },
    );
  }
}
