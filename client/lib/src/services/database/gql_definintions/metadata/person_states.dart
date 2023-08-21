import 'package:church_admin/church_admin.dart';

import 'person_states/__generated__/subscriptions.gql.dart';

class PersonStatesDAO extends DAOBase<PersonState>
    with StreamableDAO<PersonState, Input_PersonStatesBoolExp> {
  PersonStatesDAO({
    required super.db,
  }) : super(fromJson: PersonState.fromJson);

  @override
  StreamAllConfig<PersonState, Input_PersonStatesBoolExp>
      get baseStreamAllConfig => StreamAllConfig(
            document: documentNodeSubscriptionwatchAllPersonStates,
            varsConstructor: ({required event, required where}) => graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables_Subscription_watchAllPersonStates.new,
                  Input_PersonStatesBoolExp.new,
                )
                .toJson(),
          );

  @override
  StreamSingleByIdConfig<PersonState> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
