import 'package:church_admin/church_admin.dart';

class AdvancedQueryParser {
  const AdvancedQueryParser();

  PaginatableStreamBase<ViewableWithID> createPaginatableStream(
    AdvancedQuery query, [
    Stream<String?>? searchStream,
  ]) {
    final streamableDAO = query.queryableType.dao!;

    return streamableDAO.streamingProxy.streamAll(
      overrideTotalLimit: query.limit,
      streamAllConfig: streamableDAO.baseStreamAllConfig,
      streamCountConfig: streamableDAO.baseStreamCountConfig,
      searchQuery: searchStream,
      where: Stream.value([
        Filter(const DotField(), query.logicalOperator, query.filters),
      ]),
      orderBy: Stream.value(query.orderBy),
    );
  }
}
