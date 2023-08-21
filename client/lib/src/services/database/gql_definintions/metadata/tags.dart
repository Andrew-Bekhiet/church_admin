import 'package:church_admin/church_admin.dart';

import 'tags/__generated__/subscriptions.gql.dart';

class TagsDAO extends DAOBase<Tag> with StreamableDAO<Tag, Input_TagsBoolExp> {
  TagsDAO({
    required super.db,
  }) : super(fromJson: Tag.fromJson);

  @override
  StreamAllConfig<Tag, Input_TagsBoolExp> get baseStreamAllConfig =>
      StreamAllConfig(
        document: documentNodeSubscriptionwatchAllTags,
        varsConstructor: ({required event, required where}) => graphQLClient
            .getDefaultSearchVars(
              event,
              Variables_Subscription_watchAllTags.new,
              Input_TagsBoolExp.new,
            )
            .toJson(),
      );

  @override
  StreamSingleByIdConfig<Tag> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
