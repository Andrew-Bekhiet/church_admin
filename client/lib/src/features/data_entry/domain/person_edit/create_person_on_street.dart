part of 'person_edit_intent.dart';

final class CreatePersonOnStreet extends CreatePerson {
  static const String kind = 'onStreet';

  final Street street;

  const CreatePersonOnStreet({required this.street});

  @override
  Person draftPerson(String id) => _draft(id, address: Address(street: street));

  @override
  Json toJson() => _toJsonOfKind(kind, street);
}
