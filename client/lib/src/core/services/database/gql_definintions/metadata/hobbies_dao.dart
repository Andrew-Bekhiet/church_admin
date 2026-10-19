import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/hobbies/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/hobbies/__generated__/queries.graphql.dart';

class HobbiesDAO extends DAOBase<Hobby>
    with KeysetStreamableDAO<Hobby>, CreatableDAO<Hobby> {
  @override
  StreamAllConfig<Hobby> get baseStreamAllConfig => const StreamAllConfig(
    document: documentNodeQueryhobbies,
    arguments: ListQueryArguments.fromParameters,
  );

  @override
  StreamSingleByIdConfig<Hobby> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<Hobby> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateHobby,
    varsConstructor: ({required newObject}) => Variables_Mutation_createHobby(
      input: Input_CreateHobbyInput(
        name: newObject.name,
        color: colorToInt(newObject.color),
      ),
    ).toJson(),
  );

  HobbiesDAO({
    required super.db,
  }) : super(fromJson: Hobby.fromJson);
}
