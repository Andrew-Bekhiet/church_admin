part of '../../database_repository.dart';

class TagsQueries {
  TagsQueries._();

  GQLPaginatableStream<Tag> getTagsStream({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Tag>(
      searchQuery: searchQuery,
      subscriptionStream: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        final GetTagsStreamSubscription subscription =
            GetTagsStreamSubscription(
          variables: GetTagsStreamArguments(
            addWhere: [
              if (search != null && search.isNotEmpty)
                TagsBoolExp(
                  name: StringComparisonExp($ilike: '%$search%'),
                ),
              if (lastSearch == search && offset > 0)
                TagsBoolExp(
                  name: StringComparisonExp(
                    $gt: instance
                        .currentValue[
                            (offset - 1) * instance.limit + instance.limit - 1]
                        .name,
                  ),
                ),
            ],
          ),
        );

        return GetIt.I<GraphQLClient>().subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (d) => _parseListOfT(d, Tag.fromJson),
          ),
        );
      },
    );
  }
}
