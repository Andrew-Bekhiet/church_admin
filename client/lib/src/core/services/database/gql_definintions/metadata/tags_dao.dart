import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/tags/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/tags/__generated__/subscriptions.gql.dart';

class TagsDAO extends DAOBase<Tag> with LegacyStreamableDAO<Tag>, LegacyCreatableDAO<Tag> {
  @override
  LegacyStreamAllConfig<Tag> get baseStreamAllConfig => const LegacyStreamAllConfig(
    document: documentNodeSubscriptionwatchAllTags,
  );
  @override
  LegacyStreamSingleByIdConfig<Tag> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  LegacyCreateObjectConfig<Tag> get baseCreateObjectConfig => LegacyCreateObjectConfig(
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
