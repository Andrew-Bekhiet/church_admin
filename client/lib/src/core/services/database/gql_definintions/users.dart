import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/subscriptions.gql.dart';

class UsersDAO extends DAOBase<User> with StreamableDAO<User> {
  @override
  late final StreamAllConfig<User> baseStreamAllConfig = StreamAllConfig(
    document: documentNodeSubscriptionwatchAllUsers,
    transformRequest: _streamAllVarsConstructor,
  );
  @override
  late final StreamCountConfig<User> baseStreamCountConfig =
      const StreamCountConfig(
        document: documentNodeSubscriptionwatchAuthUsersDataCount,
      );
  @override
  late final StreamSingleByIdConfig<User> baseStreamSingleByIdConfig =
      const StreamSingleByIdConfig(document: documentNodeSubscriptionwatchUser);

  UsersDAO({required super.db}) : super(fromJson: User.fromJson);

  Json _streamAllVarsConstructor(
    PaginatableStreamRequest<User, StreamableDAOParameters<User>?> request,
  ) {
    final orderBy = request.param?.orderBy;

    return db.varsTransformer.transformrequestForPagination(
      request,
      overrideOrderBy: [
        ...?orderBy,
        OrderBy(
          field: UserFields().permissionsAggregate.redirectTo(
            AggregateDataFields().count,
          ),
          value: OrderByValue.desc,
        ),
        OrderBy(field: UserFields().name),
        OrderBy(field: UserFields().email),
      ],
    );
  }

  Json _streamSingleByIdVarsConstructor({
    required UuidValue id,
    bool fullData = false,
  }) => Variables_Subscription_watchUser(uid: id, fullData: fullData).toJson();

  @override
  Stream<User?> streamSingleById({
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
}
