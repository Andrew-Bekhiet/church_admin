part of 'person_edit_intent.dart';

final class CreatePersonInClass extends CreatePerson {
  static const String kind = 'inClass';

  final Class class$;

  const CreatePersonInClass({required this.class$});

  @override
  Person draftPerson(String id) => _draft(
    id,
    services: [?class$.service],
    studyYear: class$.studyYear,
    gender: class$.serviceGender ?? true,
  );

  @override
  Json toJson() => _toJsonOfKind(kind, class$);
}
