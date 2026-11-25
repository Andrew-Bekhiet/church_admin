import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart' show Uuid;

import 'fake_object_writes.dart';

class FakeServicesDAO extends Fake
    with FakeObjectWrites<Service>
    implements ServicesDAO {
  List<Service> pickableServices = const [];

  @override
  Service withIdAssignedByServer(Service newObject) =>
      newObject.copyWith(id: const Uuid().v4());

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
