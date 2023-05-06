import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'classes/__generated__/subscriptions.gql.dart';

class ClassesDAO extends DAOBase<Class> {
  const ClassesDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<Class> streamAll({
    Stream<String?>? searchQuery,
    List<Input_ClassesBoolExp>? where,
  }) {
    return GQLPaginatableStream<Class>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables_Subscription_watchAllClasses.new,
          Input_ClassesBoolExp.new,
        );

        final variables = {
          ...defaultSearchVars.copyWith(
            where: [
              if (where != null) ...where,
              if (defaultSearchVars.where != null) ...defaultSearchVars.where!,
            ],
            orderBy: [
              Input_ClassesOrderBy(
                serviceStudyYear: Enum_OrderBy.ASC,
              ),
              Input_ClassesOrderBy(
                serviceGender: Enum_OrderBy.DESC_NULLS_FIRST,
              ),
              Input_ClassesOrderBy(
                name: Enum_OrderBy.ASC,
              ),
            ],
          ).toJson(),
        };

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllClasses,
            operationName: 'watchAllClasses',
            variables: variables,
            parserFn: db.parser.singleListParser(Class.fromJson),
          ),
        );
      },
    );
  }

  Stream<Class?> streamSingleById({
    required String id,
  }) {
    return graphQLClient
        .subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchClass,
            operationName: 'watchClass',
            variables:
                Variables_Subscription_watchClass(id: id.toUuid()).toJson(),
            parserFn: db.parser.singleOrNullParser(Class.fromJson),
          ),
        )
        .map((p) => p.parsedData);
  }
}
