import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/tags/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/tags/__generated__/subscriptions.gql.dart';

class TagsDAO extends DAOBase<Tag> with StreamableDAO<Tag>, CreatableDAO<Tag> {
  @override
  StreamAllConfig<Tag> get baseStreamAllConfig => const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllTags,
  );
  @override
  StreamSingleByIdConfig<Tag> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<Tag> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateTag,
    varsConstructor: _createTagVarsConstructor,
    parserFn: db.parser.singleParser(fromJson, 'insertTagsOne'),
  );

  TagsDAO({
    required super.db,
  }) : super(fromJson: Tag.fromJson);

  Json _createTagVarsConstructor({required Tag newObject}) => {
    'object': {'name': newObject.name},
  };
}
