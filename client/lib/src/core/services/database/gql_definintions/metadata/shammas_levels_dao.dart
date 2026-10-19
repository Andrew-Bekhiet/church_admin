import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/shammas_levels/__generated__/queries.graphql.dart';

class ShammasLevelsDAO extends DAOBase<ShammasLevel>
    with KeysetStreamableDAO<ShammasLevel> {
  @override
  StreamAllConfig<ShammasLevel> get baseStreamAllConfig =>
      const StreamAllConfig(
        document: documentNodeQueryshammasLevels,
        arguments: ListQueryArguments.fromParameters,
      );

  @override
  StreamSingleByIdConfig<ShammasLevel> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  ShammasLevelsDAO({
    required super.db,
  }) : super(fromJson: ShammasLevel.fromJson);
}
