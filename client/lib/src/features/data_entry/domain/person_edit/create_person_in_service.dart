part of 'person_edit_intent.dart';

final class CreatePersonInService extends CreatePerson {
  static const String kind = 'inService';

  final Service service;

  const CreatePersonInService({required this.service});

  @override
  Person draftPerson(String id) => _draft(id, services: [service]);

  @override
  Json toJson() => _toJsonOfKind(kind, service);
}
