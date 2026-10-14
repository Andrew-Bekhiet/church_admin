part of 'person_edit_intent.dart';

final class CreatePersonInFamily extends CreatePerson {
  static const String kind = 'inFamily';

  final Family family;

  const CreatePersonInFamily({required this.family});

  @override
  Person draftPerson(String id) => _draft(id, family: family);

  @override
  Json toJson() => _toJsonOfKind(kind, family);
}
