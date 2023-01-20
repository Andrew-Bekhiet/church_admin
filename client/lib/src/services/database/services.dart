import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'services/__generated__/subscriptions.graphql.dart';

class ServicesDAO extends DAOBase {
  const ServicesDAO({
    required super.db,
  });

  GQLPaginatableStream<Service> paginateServices({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<Service>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        final bool nameSearch = search != null && search.isNotEmpty;
        final nameSearchExp = Input$StringComparisonExp($_ilike: '%$search%');

        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetServicesStream,
            operationName: 'getServicesStream',
            variables: Variables$Subscription$getServicesStream(
              limit: instance.limit + 1,
              where: [
                if (nameSearch)
                  Input$ServicesBoolExp(
                    $_or: [
                      Input$ServicesBoolExp(
                        name: nameSearchExp,
                      ),
                      Input$ServicesBoolExp(
                        classes: Input$ClassesBoolExp(
                          name: nameSearchExp,
                        ),
                      ),
                      Input$ServicesBoolExp(
                        groups: Input$GroupsBoolExp(
                          name: nameSearchExp,
                        ),
                      ),
                    ],
                  ),
                if (lastSearch == search && offset > 0)
                  Input$ServicesBoolExp(
                    name: Input$StringComparisonExp(
                      $_gt: instance
                          .currentValue[(offset - 1) * instance.limit +
                              instance.limit -
                              1]
                          .name,
                    ),
                  ),
              ],
              classesWhere: [
                if (nameSearch)
                  Input$ClassesBoolExp(
                    name: nameSearchExp,
                  )
              ],
              groupsWhere: [
                if (nameSearch)
                  Input$GroupsBoolExp(
                    name: nameSearchExp,
                  ),
              ],
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, Service.fromJson),
          ),
        );
      },
    );
  }
}
