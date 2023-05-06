import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'helpers.dart';
import 'streets/__generated__/mutations.gql.dart';
import 'streets/__generated__/subscriptions.gql.dart';

export 'streets/__generated__/mutations.gql.dart';
export 'streets/__generated__/subscriptions.gql.dart';

class StreetsDAO extends DAOBase<Street> {
  const StreetsDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<Street> streamAll({
    Stream<String?>? searchQuery,
    List<Input_StreetsBoolExp>? where,
  }) {
    return GQLPaginatableStream<Street>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        final defaultSearchVars = graphQLClient.getDefaultSearchVars(
          event,
          Variables_Subscription_watchAllStreets.new,
          Input_StreetsBoolExp.new,
        );

        final variables = defaultSearchVars.copyWith(
          where: [
            if (where != null) ...where,
            if (defaultSearchVars.where != null) ...defaultSearchVars.where!,
          ],
        ).toJson();

        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllStreets,
            operationName: 'watchAllStreets',
            variables: variables,
            parserFn: db.parser.singleListParser(Street.fromJson),
          ),
        );
      },
    );
  }

  Stream<Street?> streamSingleById({
    required String id,
  }) {
    return graphQLClient.subscribeAndReturnParsed(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchStreet,
        operationName: 'watchStreet',
        variables: Variables_Subscription_watchStreet(
          id: id.toUuid(),
        ).toJson(),
        parserFn: db.parser.singleParser(Street.fromJson),
      ),
    );
  }

  Future<Street?> deleteStreet({
    required String streetId,
  }) {
    final mutationOptions = MutationOptions(
      document: documentNodeMutationdeleteStreet,
      variables: Variables_Mutation_deleteStreet(
        streetId: streetId.toUuid(),
      ).toJson(),
      parserFn: db.parser.singleOrNullParser(Street.fromJson),
    );

    return graphQLClient.mutateAndReturnParsed(mutationOptions);
  }

  Future<Street> insertStreet({
    required Street newStreet,
  }) {
    final delta = computeObjectDelta(
      newStreet.toJson(),
      Street(id: '', name: '').toJson(),
    )..remove('id');

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: documentNodeMutationinsertStreet,
        operationName: 'insertStreet',
        variables: {'newStreet': delta},
        parserFn: db.parser.singleParser(Street.fromJson),
      ),
    );
  }

  Future<Street?> updateStreet({
    required Street newStreet,
    required Street oldStreet,
  }) {
    final delta = computeObjectDelta(
      newStreet.toJson(),
      oldStreet.toJson(),
    );

    if (delta.isEmpty) return Future.value(newStreet);

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: documentNodeMutationupdateStreet,
        operationName: 'updateStreet',
        variables: Variables_Mutation_updateStreet(
          streetId: newStreet.id.toUuid(),
          newStreet: Input_StreetsSetInput.fromJson(delta),
        ).toJson(),
        parserFn: db.parser.singleOrNullParser(Street.fromJson),
      ),
    );
  }
}
