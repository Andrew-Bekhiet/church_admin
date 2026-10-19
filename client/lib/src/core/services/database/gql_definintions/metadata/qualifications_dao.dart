import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/qualifications/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/qualifications/__generated__/queries.graphql.dart';

class QualificationsDAO extends DAOBase<Qualification>
    with KeysetStreamableDAO<Qualification>, CreatableDAO<Qualification> {
  @override
  StreamAllConfig<Qualification> get baseStreamAllConfig =>
      const StreamAllConfig(
        document: documentNodeQueryqualifications,
        arguments: ListQueryArguments.fromParameters,
      );

  @override
  StreamSingleByIdConfig<Qualification> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<Qualification> get baseCreateObjectConfig =>
      CreateObjectConfig(
        document: documentNodeMutationcreateQualification,
        varsConstructor: ({required newObject}) =>
            Variables_Mutation_createQualification(
              input: Input_CreateQualificationInput(name: newObject.name),
            ).toJson(),
      );

  QualificationsDAO({
    required super.db,
  }) : super(fromJson: Qualification.fromJson);
}
