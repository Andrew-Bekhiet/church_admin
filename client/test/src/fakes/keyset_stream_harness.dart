import 'package:church_admin/church_admin.dart';

import 'ash_responses.dart';
import 'fake_ash_server.dart';

/// A [KeysetPaginatedStream] over the rows of a [LiveQueryHarness].
class KeysetStreamHarness {
  static const pageSize = 3;
  static const settleTime = Duration(seconds: 5);

  static List<AshTestItem> rowsNamed(int count) => [
    for (var index = 0; index < count; index++)
      AshTestItem(
        id: 'row${index.toString().padLeft(2, '0')}',
        name: 'اسم $index',
      ),
  ];

  static KeysetPaginatedStream<AshTestItem, List<String>?> streamOver(
    LiveQueryHarness harness, {
    Stream<List<String>?>? onlyIds,
    int? totalLimit,
    int maxPageSize = AshPagination.maxPageSize,
  }) {
    final query = KeysetPageQuery<AshTestItem>(
      client: harness.client,
      document: LiveQueryHarness.listDocument,
      fromJson: AshTestItem.fromJson,
    );

    return KeysetPaginatedStream(
      registry: harness.registry,
      parametersStream: onlyIds ?? Stream.value(null),
      pageSize: pageSize,
      totalLimit: totalLimit,
      maxPageSize: maxPageSize,
      pageQueryFor: (_) => query,
      variablesFor: (ids) => {
        if (ids != null)
          'filter': {
            'id': {'in': ids},
          },
      },
    );
  }

  static Json pageData(
    Iterable<AshTestItem> items, {
    int? count,
    String? endKeyset,
  }) => {
    'testItems': AshResponses.page(
      [for (final item in items) item.toJson()],
      count: count,
      endKeyset: endKeyset,
    ),
  };
}
