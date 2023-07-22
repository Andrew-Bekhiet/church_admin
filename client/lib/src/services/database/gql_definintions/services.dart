import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'helpers.dart';
import 'services/__generated__/mutations.gql.dart';
import 'services/__generated__/subscriptions.gql.dart';

class ServicesDAO extends DAOBase<Service> {
  const ServicesDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<Service> streamAll({
    Stream<String?>? searchQuery,
    List<Input_ServicesBoolExp>? where,
    List<Input_GroupsBoolExp>? groupsWhere,
    List<Input_ClassesBoolExp>? classesWhere,
  }) {
    return GQLPaginatableStream<Service>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final instance = event.instance;
        final offset = event.offset;
        final search = event.search;
        final lastSearch = event.lastSearch;

        final bool nameSearch = search != null && search.isNotEmpty;
        final nameSearchExp = Input_StringComparisonExp($_ilike: '%$search%');

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllServices,
            operationName: 'watchAllServices',
            variables: Variables_Subscription_watchAllServices(
              limit: instance.limit + 1,
              where: [
                if (where != null) ...where,
                if (nameSearch)
                  Input_ServicesBoolExp(
                    $_or: [
                      Input_ServicesBoolExp(
                        name: nameSearchExp,
                      ),
                      Input_ServicesBoolExp(
                        classes: Input_ClassesBoolExp(
                          name: nameSearchExp,
                        ),
                      ),
                      Input_ServicesBoolExp(
                        groups: Input_GroupsBoolExp(
                          name: nameSearchExp,
                        ),
                      ),
                    ],
                  ),
                if (lastSearch == search && offset > 0)
                  Input_ServicesBoolExp(
                    name: Input_StringComparisonExp(
                      $_gt: instance
                          .currentValue[(offset - 1) * instance.limit +
                              instance.limit -
                              1]
                          .name,
                    ),
                  ),
              ],
              classesWhere: [
                if (classesWhere != null) ...classesWhere,
                if (nameSearch)
                  Input_ClassesBoolExp(
                    name: nameSearchExp,
                  ),
              ],
              groupsWhere: [
                if (groupsWhere != null) ...groupsWhere,
                if (nameSearch)
                  Input_GroupsBoolExp(
                    name: nameSearchExp,
                  ),
              ],
            ).toJson(),
            parserFn: db.parser.singleListParser(Service.fromJson),
          ),
        );
      },
    );
  }

  Stream<Service?> streamSingleById({
    required String id,
  }) {
    return graphQLClient
        .subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchService,
            operationName: 'watchService',
            variables:
                Variables_Subscription_watchService(id: id.toUuid()).toJson(),
            parserFn: db.parser.singleOrNullParser(Service.fromJson),
          ),
        )
        .map((p) => p.parsedData);
  }

  Future<Service?> deleteService({
    required String serviceId,
  }) {
    final mutationOptions = MutationOptions(
      document: documentNodeMutationdeleteService,
      variables: Variables_Mutation_deleteService(
        serviceId: serviceId.toUuid(),
      ).toJson(),
      parserFn: db.parser.singleOrNullParser(Service.fromJson),
    );

    return graphQLClient.mutateAndReturnParsed(mutationOptions);
  }

  Future<Service> insertService({
    required Service newService,
  }) {
    final delta = computeObjectDelta(
      newService.toJson(),
      Service(id: '', name: '').toJson(),
    )
      ..remove('id')
      ..remove('nextService')
      ..remove('studyYearFrom')
      ..remove('studyYearTo');

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertService,
        operationName: 'insertService',
        variables: {'newService': delta},
        parserFn: db.parser.singleParser(Service.fromJson),
      ),
    );
  }

  Future<Service?> updateService({
    required Service newService,
    required Service oldService,
  }) {
    final delta = computeObjectDelta(
      newService.toJson(),
      oldService.toJson(),
    );

    if (delta.isEmpty) return Future.value(newService);

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateService,
        operationName: 'updateService',
        variables: Variables_Mutation_updateService(
          serviceId: newService.id.toUuid(),
          newService: Input_ServicesSetInput.fromJson(delta),
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(Service.fromJson),
      ),
    );
  }
}
