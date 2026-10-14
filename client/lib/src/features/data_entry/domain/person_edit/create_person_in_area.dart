part of 'person_edit_intent.dart';

final class CreatePersonInArea extends CreatePerson {
  static const String kind = 'inArea';

  final Area area;

  const CreatePersonInArea({required this.area});

  @override
  Person draftPerson(String id) => _draft(id, address: Address(area: area));

  @override
  Json toJson() => _toJsonOfKind(kind, area);
}
