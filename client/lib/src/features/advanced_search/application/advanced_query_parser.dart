import 'package:church_admin/church_admin.dart';

class AdvancedQueryParser {
  const AdvancedQueryParser();

  PaginatableStreamBase<ViewableWithID> createPaginatableStream(
    AdvancedQuery query, [
    Stream<String?>? searchStream,
  ]) {
    final availableQuery = query.withAvailableFields();
    final streamableDAO = availableQuery.queryableType.dao!;

    return streamableDAO.streamAllWithConfig(
      overrideTotalLimit: availableQuery.limit,
      streamAllConfig: streamableDAO.baseStreamAllConfig,
      streamCountConfig: streamableDAO.baseStreamCountConfig,
      searchQuery: searchStream,
      where: Stream.value([
        Filter(
          const DotField(),
          availableQuery.logicalOperator,
          availableQuery.filters,
        ),
      ]),
      orderBy: Stream.value(availableQuery.orderBy),
    );
  }
}
