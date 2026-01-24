import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types/__generated__/subscriptions.gql.dart';

class PersonTypesDAO extends DAOBase<PersonType>
    with StreamableDAO<PersonType>, CreatableDAO<PersonType> {
  PersonTypesDAO({
    required super.db,
  }) : super(fromJson: PersonType.fromJson);

  @override
  StreamAllConfig<PersonType> get baseStreamAllConfig => const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllPersonTypes,
  );

  @override
  StreamSingleByIdConfig<PersonType> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<PersonType> get baseCreateObjectConfig =>
      CreateObjectConfig(
        document: documentNodeMutationcreatePersonType,
        varsConstructor: _createPersonTypeVarsConstructor,
        parserFn: db.parser.singleParser(fromJson, 'insertPersonTypesOne'),
      );

  @override
  PaginatableStreamBase<PersonType> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
  }) {
    return streamingProxy.streamAll(
      streamAllConfig: baseStreamAllConfig,
      streamCountConfig: baseStreamCountConfig,
      searchQuery: searchQuery,
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

  Json _createPersonTypeVarsConstructor({required PersonType newObject}) => {
    'object': {'name': newObject.name},
  };
}
