import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/churches/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/churches/__generated__/subscriptions.gql.dart';

class ChurchesDAO extends DAOBase<Church>
    with LegacyStreamableDAO<Church>, LegacyCreatableDAO<Church> {
  @override
  LegacyStreamAllConfig<Church> get baseStreamAllConfig => const LegacyStreamAllConfig(
    document: documentNodeSubscriptionwatchAllChurches,
  );
  @override
  LegacyStreamSingleByIdConfig<Church> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  LegacyCreateObjectConfig<Church> get baseCreateObjectConfig => LegacyCreateObjectConfig(
    document: documentNodeMutationcreateChurch,
    varsConstructor: _createChurchVarsConstructor,
    parserFn: db.parser.singleParser(fromJson),
  );

  ChurchesDAO({
    required super.db,
  }) : super(fromJson: Church.fromJson);

  Json _createChurchVarsConstructor({required Church newObject}) => {
    'object': {'name': newObject.name},
  };

  @override
  PaginatableStreamBase<Church> streamAll({
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
              Filter(ChurchFields().isHidden, BooleanOperator.is$, false),
            ],
          ),
      orderBy:
          orderBy ??
          Stream.value(
            [
              OrderBy(field: ChurchFields().name),
            ],
          ),
    );
  }
}
