import 'package:church_admin/church_admin.dart';

import 'hobbies/__generated__/subscriptions.gql.dart';

class HobbiesDAO extends DAOBase<Hobby>
    with StreamableDAO<Hobby, Input_HobbiesBoolExp> {
  HobbiesDAO({
    required super.db,
  }) : super(fromJson: Hobby.fromJson);

  @override
  StreamAllConfig<Hobby, Input_HobbiesBoolExp> get baseStreamAllConfig =>
      StreamAllConfig(
        document: documentNodeSubscriptionwatchAllHobbies,
        varsConstructor: ({required event, required where}) => graphQLClient
            .getDefaultSearchVars(
              event,
              Variables_Subscription_watchAllHobbies.new,
              Input_HobbiesBoolExp.new,
            )
            .toJson(),
      );

  @override
  StreamSingleByIdConfig<Hobby> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
