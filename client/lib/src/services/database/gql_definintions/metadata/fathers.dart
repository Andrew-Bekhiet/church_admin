import 'package:church_admin/church_admin.dart';

import 'fathers/__generated__/subscriptions.gql.dart';

class FathersDAO extends DAOBase<Father>
    with StreamableDAO<Father, Input_FathersBoolExp> {
  FathersDAO({
    required super.db,
  }) : super(fromJson: Father.fromJson);

  @override
  StreamAllConfig<Father, Input_FathersBoolExp> get baseStreamAllConfig =>
      StreamAllConfig(
        document: documentNodeSubscriptionwatchAllFathers,
        varsConstructor: ({required event, required where}) => graphQLClient
            .getDefaultSearchVars(
              event,
              Variables_Subscription_watchAllFathers.new,
              Input_FathersBoolExp.new,
            )
            .toJson(),
      );

  @override
  StreamSingleByIdConfig<Father> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
