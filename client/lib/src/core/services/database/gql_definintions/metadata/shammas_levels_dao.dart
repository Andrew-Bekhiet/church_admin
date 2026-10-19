import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/shammas_levels/__generated__/subscriptions.gql.dart';

class ShammasLevelsDAO extends DAOBase<ShammasLevel>
    with LegacyStreamableDAO<ShammasLevel> {
  @override
  LegacyStreamAllConfig<ShammasLevel> get baseStreamAllConfig =>
      const LegacyStreamAllConfig(
        document: documentNodeSubscriptionwatchAllShammasLevels,
      );

  @override
  LegacyStreamSingleByIdConfig<ShammasLevel> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  ShammasLevelsDAO({
    required super.db,
  }) : super(fromJson: ShammasLevel.fromJson);
}
