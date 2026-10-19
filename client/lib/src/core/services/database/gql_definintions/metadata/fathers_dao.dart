import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/fathers/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/fathers/__generated__/subscriptions.gql.dart';

class FathersDAO extends DAOBase<Father>
    with LegacyStreamableDAO<Father>, LegacyCreatableDAO<Father> {
  @override
  LegacyStreamAllConfig<Father> get baseStreamAllConfig => const LegacyStreamAllConfig(
    document: documentNodeSubscriptionwatchAllFathers,
  );

  @override
  LegacyStreamSingleByIdConfig<Father> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  LegacyCreateObjectConfig<Father> get baseCreateObjectConfig => LegacyCreateObjectConfig(
    document: documentNodeMutationcreateFather,
    varsConstructor: _createFatherVarsConstructor,
    parserFn: db.parser.singleParser(fromJson),
  );

  FathersDAO({
    required super.db,
  }) : super(fromJson: Father.fromJson);

  Json _createFatherVarsConstructor({required Father newObject}) => {
    'object': {'name': newObject.name},
  };

  @override
  PaginatableStreamBase<Father> streamAll({
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
              Filter(FatherFields().isHidden, BooleanOperator.is$, false),
            ],
          ),
      orderBy:
          orderBy ??
          Stream.value(
            [
              OrderBy(field: FatherFields().name),
            ],
          ),
    );
  }
}
