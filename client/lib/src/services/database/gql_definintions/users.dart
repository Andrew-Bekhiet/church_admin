import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';
import 'package:uuid/uuid.dart';

import 'users/__generated__/queries.gql.dart';
import 'users/__generated__/subscriptions.gql.dart';

class UsersDAO extends DAOBase<User>
    with StreamableDAO<User, Input_AuthUsersDataBoolExp> {
  UsersDAO({required super.db}) : super(fromJson: User.fromJson);

  @override
  late final StreamAllConfig<User, Input_AuthUsersDataBoolExp>
      baseStreamAllConfig = StreamAllConfig(
    document: documentNodeSubscriptionwatchAllUsers,
    varsConstructor: _streamAllVarsConstructor,
  );
  @override
  late final StreamSingleByIdConfig<User> baseStreamSingleByIdConfig =
      const StreamSingleByIdConfig(document: documentNodeSubscriptionwatchUser);

  Json _streamAllVarsConstructor({
    required GQLPaginatableStreamEvent<User> event,
    required List<Input_AuthUsersDataBoolExp> where,
  }) {
    final defaultSearchVars = graphQLClient.getDefaultSearchVars(
      event,
      Variables_Subscription_watchAllUsers.new,
      Input_AuthUsersDataBoolExp.new,
    );

    return defaultSearchVars.copyWith(
      where: [
        ...where,
        if (defaultSearchVars.where != null) ...defaultSearchVars.where!,
      ],
      orderBy: [
        ...defaultSearchVars.orderBy ?? [],
        Input_AuthUsersDataOrderBy(
          permissionsAggregate: Input_AuthUsersPermissionsAggregateOrderBy(
            count: Enum_OrderBy.DESC,
          ),
        ),
        Input_AuthUsersDataOrderBy(name: Enum_OrderBy.ASC),
        Input_AuthUsersDataOrderBy(email: Enum_OrderBy.ASC),
      ],
    ).toJson();
  }

  Json _streamSingleByIdVarsConstructor({
    required UuidValue id,
    bool fullData = false,
  }) =>
      Variables_Subscription_watchUser(uid: id, fullData: fullData).toJson();

  @override
  Stream<User?> streamSingleById({
    /// The uid of the user
    required String id,
    bool fullData = false,
  }) {
    return streamingProxy.streamSingleById(
      id: id,
      streamSingleByIdConfig: baseStreamSingleByIdConfig.copyWith(
        variables: _streamSingleByIdVarsConstructor(
          id: id.toUuid(),
          fullData: fullData,
        ),
      ),
    );
  }

  Future<User?> analyzeUserAttendance({
    required String personId,
    required String userId,
    required DateTime dateFrom,
    required DateTime dateTo,
    required Iterable<String> groupsIds,
    required Iterable<String> classesIds,
    required Iterable<String> servicesIds,
  }) {
    final queryOptions = WatchQueryOptions(
      fetchResults: true,
      eagerlyFetchResults: false,
      document: documentNodeQueryanalyzeUserAttendance,
      operationName: 'analyzeUserAttendance',
      variables: Variables_Query_analyzeUserAttendance(
        userId: userId.toUuid(),
        personId: personId.toUuid(),
        dateFrom: dateFrom,
        dateTo: dateTo,
        classesIds: classesIds.map((e) => e.toUuid()).toList(),
        groupsIds: groupsIds.map((e) => e.toUuid()).toList(),
        servicesIds: servicesIds.map((e) => e.toUuid()).toList(),
      ).toJson(),
      parserFn: db.parser.singleParser(User.fromJson),
    );

    return graphQLClient.queryAndReturnParsedNullable(queryOptions);
  }
}
