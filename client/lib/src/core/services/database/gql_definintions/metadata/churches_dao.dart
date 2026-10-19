import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/churches/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/churches/__generated__/queries.graphql.dart';

class ChurchesDAO extends DAOBase<Church>
    with KeysetStreamableDAO<Church>, CreatableDAO<Church> {
  @override
  StreamAllConfig<Church> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQuerychurches,
    arguments: (parameters) => ListQueryArguments.fromParameters(
      parameters,
      defaultWhere: [
        Filter(ChurchFields().isHidden, BooleanOperator.is$, false),
      ],
      defaultOrderBy: [OrderBy(field: ChurchFields().name)],
    ),
  );

  @override
  StreamSingleByIdConfig<Church> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<Church> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateChurch,
    varsConstructor: ({required newObject}) => Variables_Mutation_createChurch(
      input: Input_CreateChurchInput(name: newObject.name),
    ).toJson(),
  );

  ChurchesDAO({
    required super.db,
  }) : super(fromJson: Church.fromJson);
}
