part of '../../database_service.dart';

class TagsQueries {
  const TagsQueries._();

  GQLPaginatableStream<Tag> getTagsStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Tag>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetTagsStream,
            operationName: 'getTagsStream',
            variables: Variables$Subscription$getTagsStream(
              where: [
                if (search != null && search.isNotEmpty)
                  Input$TagsBoolExp(
                    name: Input$StringComparisonExp($_ilike: '%$search%'),
                  ),
                if (lastSearch == search && offset > 0)
                  Input$TagsBoolExp(
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
            parserFn: (d) => _parseListOfT(d, Tag.fromJson),
          ),
        );
      },
    );
  }
}
