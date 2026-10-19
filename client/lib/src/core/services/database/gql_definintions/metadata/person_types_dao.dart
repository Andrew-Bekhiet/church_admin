import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types/__generated__/queries.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types/__generated__/subscriptions.gql.dart';
import 'package:graphql/client.dart';

class PersonTypesDAO extends DAOBase<PersonType>
    with LegacyStreamableDAO<PersonType>, LegacyCreatableDAO<PersonType> {
  @override
  LegacyStreamAllConfig<PersonType> get baseStreamAllConfig => const LegacyStreamAllConfig(
    document: documentNodeSubscriptionwatchAllPersonTypes,
  );

  @override
  LegacyStreamSingleByIdConfig<PersonType> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  LegacyCreateObjectConfig<PersonType> get baseCreateObjectConfig =>
      LegacyCreateObjectConfig(
        document: documentNodeMutationcreatePersonType,
        varsConstructor: _createPersonTypeVarsConstructor,
        parserFn: db.parser.singleParser(fromJson, 'insertPersonTypesOne'),
      );

  PersonTypesDAO({
    required super.db,
  }) : super(fromJson: PersonType.fromJson);

  @override
  PaginatableStreamBase<PersonType> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
  }) {
    return super.streamAll(
      searchQuery: searchQuery,
      secondLineField: secondLineField,
      where:
          where ??
          Stream.value(
            [
              Filter(PersonTypeFields().isHidden, BooleanOperator.is$, false),
            ],
          ),
      orderBy:
          orderBy ??
          Stream.value(
            [
              OrderBy(
                field: PersonTypeFields().isFamilyAdmin,
                value: OrderByValue.desc,
              ),
              OrderBy(field: PersonTypeFields().order),
              OrderBy(field: PersonTypeFields().isHidden),
            ],
          ),
    );
  }

  Future<List<PersonType>> fetchFamilyRoles() {
    return graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: documentNodeQueryfamilyRoles,
        operationName: 'familyRoles',
        parserFn: (data) => (data['personTypes'] as List)
            .map((role) => PersonType.fromJson(Json.from(role as Map)))
            .toList(),
      ),
    );
  }

  Json _createPersonTypeVarsConstructor({required PersonType newObject}) => {
    'object': {'name': newObject.name},
  };
}
