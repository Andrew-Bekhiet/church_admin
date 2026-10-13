import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeStreetsDAO extends Fake implements StreetsDAO {
  List<Street> streets = const [];

  @override
  PaginatableStreamBase<Street> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
  }) => PaginatableStream.simple(
    factory: (_) => Stream.value(PaginatableStreamResponse(data: streets)),
  );
}
