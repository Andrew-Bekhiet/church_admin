part of 'person_edit_intent.dart';

final class CreateBlankPerson extends CreatePerson {
  static const String kind = 'create';

  const CreateBlankPerson();

  @override
  Person draftPerson(String id) => _draft(id);

  @override
  Json toJson() => _toJsonOfKind(kind);
}
