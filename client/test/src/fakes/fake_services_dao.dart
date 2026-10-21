import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeServicesDAO extends Fake implements ServicesDAO {
  List<Service> pickableServices = const [];

  @override
  PaginatableStreamBase<Service> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
  }) => PaginatableStream.simple(
    factory: (_) =>
        Stream.value(PaginatableStreamResponse(data: pickableServices)),
  );
}
