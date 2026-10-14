part of 'person_edit_intent.dart';

final class CreatePersonInGroup extends CreatePerson {
  static const String kind = 'inGroup';

  final Group group;

  const CreatePersonInGroup({required this.group});

  @override
  Person draftPerson(String id) => _draft(
    id,
    services: [
      if (group.service case final service?) service.copyWith(groups: [group]),
    ],
    groups: [group],
  );

  @override
  Json toJson() => _toJsonOfKind(kind, group);
}
