import 'package:church_admin/church_admin.dart';

import 'person_types/__generated__/subscriptions.gql.dart';

class PersonTypesDAO extends DAOBase<PersonType>
    with StreamableDAO<PersonType, Input_PersonTypesBoolExp> {
  PersonTypesDAO({
    required super.db,
  }) : super(fromJson: PersonType.fromJson);

  @override
  StreamAllConfig<PersonType, Input_PersonTypesBoolExp>
      get baseStreamAllConfig => StreamAllConfig(
            document: documentNodeSubscriptionwatchAllPersonTypes,
            varsConstructor: ({required event, required where}) => graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables_Subscription_watchAllPersonTypes.new,
                  Input_PersonTypesBoolExp.new,
                )
                .toJson(),
          );

  @override
  StreamSingleByIdConfig<PersonType> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
