import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/shammas_levels/__generated__/subscriptions.gql.dart';

class ShammasLevelsDAO extends DAOBase<ShammasLevel>
    with StreamableDAO<ShammasLevel> {
  @override
  StreamAllConfig<ShammasLevel> get baseStreamAllConfig =>
      const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllShammasLevels,
      );

  @override
  StreamSingleByIdConfig<ShammasLevel> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  ShammasLevelsDAO({
    required super.db,
  }) : super(fromJson: ShammasLevel.fromJson);
}
