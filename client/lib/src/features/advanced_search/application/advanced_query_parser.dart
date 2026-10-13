import 'package:church_admin/church_admin.dart';

class AdvancedQueryParser {
  const AdvancedQueryParser();

  PaginatableStreamBase<ViewableWithID> createPaginatableStream(
    AdvancedQuery query, [
    Stream<String?>? searchStream,
  ]) {
    final enabledQuery = query.withEnabledFields();
    final streamableDAO = enabledQuery.queryableType.dao!;

    return streamableDAO.streamAllWithConfig(
      overrideTotalLimit: enabledQuery.limit,
      streamAllConfig: streamableDAO.baseStreamAllConfig,
      streamCountConfig: streamableDAO.baseStreamCountConfig,
      searchQuery: searchStream,
      where: Stream.value([
        Filter(
          const DotField(),
          enabledQuery.logicalOperator,
          enabledQuery.filters,
        ),
      ]),
      orderBy: Stream.value(enabledQuery.orderBy),
    );
  }
}
