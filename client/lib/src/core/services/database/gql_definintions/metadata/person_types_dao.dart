import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types/__generated__/queries.graphql.dart';

class PersonTypesDAO extends DAOBase<PersonType>
    with KeysetStreamableDAO<PersonType>, CreatableDAO<PersonType> {
  @override
  StreamAllConfig<PersonType> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQuerypersonTypes,
    arguments: (parameters) => ListQueryArguments.fromParameters(
      parameters,
      defaultWhere: [
        Filter(PersonTypeFields().isHidden, BooleanOperator.is$, false),
      ],
      defaultOrderBy: [
        OrderBy(
          field: PersonTypeFields().isFamilyAdmin,
          value: OrderByValue.desc,
        ),
        OrderBy(field: PersonTypeFields().order),
        OrderBy(field: PersonTypeFields().isHidden),
      ],
    ),
  );

  @override
  StreamSingleByIdConfig<PersonType> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<PersonType> get baseCreateObjectConfig =>
      CreateObjectConfig(
        document: documentNodeMutationcreatePersonType,
        varsConstructor: ({required newObject}) =>
            Variables_Mutation_createPersonType(
              input: Input_CreatePersonTypeInput(name: newObject.name),
            ).toJson(),
      );

  PersonTypesDAO({
    required super.db,
  }) : super(fromJson: PersonType.fromJson);

  Future<List<PersonType>> fetchFamilyRoles() => query(
    where: [
      Filter(PersonTypeFields().isFamilyAdmin, BooleanOperator.is$, true),
    ],
    orderBy: [OrderBy(field: PersonTypeFields().order)],
    limit: AshPagination.maxPageSize,
  );
}
