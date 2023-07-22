import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'classes/__generated__/mutations.gql.dart';
import 'classes/__generated__/subscriptions.gql.dart';
import 'helpers.dart';

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

  Future<Class?> deleteClass({
    required String classId,
  }) {
    final mutationOptions = MutationOptions(
      document: documentNodeMutationdeleteClass,
      variables: Variables_Mutation_deleteClass(
        classId: classId.toUuid(),
      ).toJson(),
      parserFn: db.parser.singleOrNullParser(Class.fromJson),
    );

    return graphQLClient.mutateAndReturnParsed(mutationOptions);
  }

  Future<Class> insertClass({
    required Class newClass,
  }) {
    final delta = computeObjectDelta(
      newClass.toJson(),
      Class(id: '', name: '').toJson(),
    )
      ..remove('id')
      ..remove('service')
      ..remove('studyYear');

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertClass,
        operationName: 'insertClass',
        variables: {'newClass': delta},
        parserFn: db.parser.singleParser(Class.fromJson),
      ),
    );
  }

  Future<Class?> updateClass({
    required Class newClass,
    required Class oldClass,
  }) {
    final delta = computeObjectDelta(
      newClass.toJson(),
      oldClass.toJson(),
    );

    if (delta.isEmpty) return Future.value(newClass);

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateClass,
        operationName: 'updateClass',
        variables: Variables_Mutation_updateClass(
          classId: newClass.id.toUuid(),
          newClass: Input_ClassesSetInput.fromJson(delta),
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(Class.fromJson),
      ),
    );
  }
}
