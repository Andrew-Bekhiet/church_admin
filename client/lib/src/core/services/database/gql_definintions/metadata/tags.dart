import 'package:church_admin/church_admin.dart';

import 'tags/__generated__/subscriptions.gql.dart';

class TagsDAO extends DAOBase<Tag>
    with StreamableDAO<Tag, Input_TagsBoolExp, Input_TagsOrderBy> {
  TagsDAO({
    required super.db,
  }) : super(fromJson: Tag.fromJson);

  @override
  StreamAllConfig<Tag, Input_TagsBoolExp, Input_TagsOrderBy>
      get baseStreamAllConfig => const StreamAllConfig(
            document: documentNodeSubscriptionwatchAllTags,
          );

  @override
  StreamSingleByIdConfig<Tag> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
