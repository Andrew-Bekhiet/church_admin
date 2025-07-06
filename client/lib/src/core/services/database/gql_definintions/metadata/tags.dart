import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/tags/__generated__/subscriptions.gql.dart';

class TagsDAO extends DAOBase<Tag> with StreamableDAO<Tag> {
  TagsDAO({
    required super.db,
  }) : super(fromJson: Tag.fromJson);

  @override
  StreamAllConfig<Tag> get baseStreamAllConfig => const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllTags,
      );

  @override
  StreamSingleByIdConfig<Tag> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
