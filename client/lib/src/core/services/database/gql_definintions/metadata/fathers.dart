import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/fathers/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/fathers/__generated__/subscriptions.gql.dart';

class FathersDAO extends DAOBase<Father>
    with StreamableDAO<Father>, CreatableDAO<Father> {
  @override
  StreamAllConfig<Father> get baseStreamAllConfig => const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllFathers,
  );

  @override
  StreamSingleByIdConfig<Father> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<Father> get baseCreateObjectConfig => CreateObjectConfig(
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
  }) {
    return streamingProxy.streamAll(
      streamAllConfig: baseStreamAllConfig,
      streamCountConfig: baseStreamCountConfig,
      searchQuery: searchQuery,
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
