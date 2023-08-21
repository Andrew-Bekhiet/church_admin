import 'package:church_admin/church_admin.dart';

import 'churches/__generated__/subscriptions.gql.dart';

class ChurchesDAO extends DAOBase<Church>
    with StreamableDAO<Church, Input_ChurchesBoolExp> {
  ChurchesDAO({
    required super.db,
  }) : super(fromJson: Church.fromJson);

  @override
  StreamAllConfig<Church, Input_ChurchesBoolExp> get baseStreamAllConfig =>
      StreamAllConfig(
        document: documentNodeSubscriptionwatchAllChurches,
        varsConstructor: ({required event, required where}) => graphQLClient
            .getDefaultSearchVars(
              event,
              Variables_Subscription_watchAllChurches.new,
              Input_ChurchesBoolExp.new,
            )
            .toJson(),
      );

  @override
  StreamSingleByIdConfig<Church> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
