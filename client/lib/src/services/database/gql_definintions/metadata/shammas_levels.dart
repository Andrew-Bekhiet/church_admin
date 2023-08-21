import 'package:church_admin/church_admin.dart';

import 'shammas_levels/__generated__/subscriptions.gql.dart';

class ShammasLevelsDAO extends DAOBase<ShammasLevel>
    with StreamableDAO<ShammasLevel, Input_ShammasLevelsBoolExp> {
  ShammasLevelsDAO({
    required super.db,
  }) : super(fromJson: ShammasLevel.fromJson);

  @override
  StreamAllConfig<ShammasLevel, Input_ShammasLevelsBoolExp>
      get baseStreamAllConfig => StreamAllConfig(
            document: documentNodeSubscriptionwatchAllShammasLevels,
            varsConstructor: ({required event, required where}) => graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables_Subscription_watchAllShammasLevels.new,
                  Input_ShammasLevelsBoolExp.new,
                )
                .toJson(),
          );

  @override
  StreamSingleByIdConfig<ShammasLevel> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
