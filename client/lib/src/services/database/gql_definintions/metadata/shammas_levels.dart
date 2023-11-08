import 'package:church_admin/church_admin.dart';

import 'shammas_levels/__generated__/subscriptions.gql.dart';

class ShammasLevelsDAO extends DAOBase<ShammasLevel>
    with
        StreamableDAO<ShammasLevel, Input_ShammasLevelsBoolExp,
            Input_ShammasLevelsOrderBy> {
  ShammasLevelsDAO({
    required super.db,
  }) : super(fromJson: ShammasLevel.fromJson);

  @override
  StreamAllConfig<ShammasLevel, Input_ShammasLevelsBoolExp,
          Input_ShammasLevelsOrderBy>
      get baseStreamAllConfig => const StreamAllConfig(
            document: documentNodeSubscriptionwatchAllShammasLevels,
          );

  @override
  StreamSingleByIdConfig<ShammasLevel> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
