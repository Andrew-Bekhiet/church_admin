import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'classes/__generated__/subscriptions.graphql.dart';

class ClassesDAO extends DAOBase {
  const ClassesDAO({
    required super.db,
  });

  GQLPaginatableStream<Class> paginateClasses({
    Stream<String?>? searchQuery,
    String? serviceId,
  }) {
    return GQLPaginatableStream<Class>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables$Subscription$watchAllClasses.new,
          Input$ClassesBoolExp.new,
        );

        final variables = defaultSearchVars.copyWith(
          where: [
            if (serviceId != null)
              Input$ClassesBoolExp(
                serviceId: Input$UuidComparisonExp($_eq: serviceId.toUuid()),
              ),
            ...defaultSearchVars.where ?? [],
          ],
          orderBy: [
            Input$ClassesOrderBy(
              serviceStudyYear: Enum$OrderBy.ASC,
            ),
            Input$ClassesOrderBy(
              serviceGender: Enum$OrderBy.DESC_NULLS_FIRST,
            ),
            Input$ClassesOrderBy(
              name: Enum$OrderBy.ASC,
            ),
          ],
        );

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllClasses,
            operationName: 'watchAllClasses',
            variables: variables.toJson(),
            parserFn: db.parser.singleListParser(Class.fromJson),
          ),
        );
      },
    );
  }

  Stream<Class?> watchClass({
    required String classId,
  }) {
    return graphQLClient
        .subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchClass,
            operationName: 'watchClass',
            variables: Variables$Subscription$watchClass(id: classId.toUuid())
                .toJson(),
            parserFn: db.parser.singleOrNullParser(Class.fromJson),
          ),
        )
        .map((p) => p.parsedData);
  }
}
