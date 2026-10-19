import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/fathers/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/fathers/__generated__/queries.graphql.dart';

class FathersDAO extends DAOBase<Father>
    with KeysetStreamableDAO<Father>, CreatableDAO<Father> {
  @override
  StreamAllConfig<Father> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQueryfathers,
    arguments: (parameters) => ListQueryArguments.fromParameters(
      parameters,
      defaultWhere: [
        Filter(FatherFields().isHidden, BooleanOperator.is$, false),
      ],
      defaultOrderBy: [OrderBy(field: FatherFields().name)],
    ),
  );

  @override
  StreamSingleByIdConfig<Father> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<Father> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateFather,
    varsConstructor: ({required newObject}) => Variables_Mutation_createFather(
      input: Input_CreateFatherInput(
        name: newObject.name,
        churchId: newObject.churchId,
      ),
    ).toJson(),
  );

  FathersDAO({
    required super.db,
  }) : super(fromJson: Father.fromJson);
}
