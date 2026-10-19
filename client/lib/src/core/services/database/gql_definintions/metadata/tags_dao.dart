import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/tags/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/tags/__generated__/queries.graphql.dart';

class TagsDAO extends DAOBase<Tag>
    with KeysetStreamableDAO<Tag>, CreatableDAO<Tag> {
  @override
  StreamAllConfig<Tag> get baseStreamAllConfig => const StreamAllConfig(
    document: documentNodeQuerytags,
    arguments: ListQueryArguments.fromParameters,
  );

  @override
  StreamSingleByIdConfig<Tag> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<Tag> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateTag,
    varsConstructor: ({required newObject}) => Variables_Mutation_createTag(
      input: Input_CreateTagInput(
        name: newObject.name,
        color: colorToInt(newObject.color),
      ),
    ).toJson(),
  );

  TagsDAO({
    required super.db,
  }) : super(fromJson: Tag.fromJson);
}
