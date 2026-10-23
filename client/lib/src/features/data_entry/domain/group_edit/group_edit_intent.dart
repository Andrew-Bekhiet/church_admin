import 'package:church_admin/church_admin.dart';

sealed class GroupEditIntent extends SerializableExtra {
  @override
  String get typeName => 'GroupEditIntent';

  const GroupEditIntent();

  factory GroupEditIntent.fromJson(Json json) {
    late final subject = EditIntentJson.subjectOf(
      json,
      intentName: 'GroupEditIntent',
    );

    return switch (json[EditIntentJson.kindKey]) {
      UpdateGroup.kind => UpdateGroup(group: Group.fromJson(subject)),
      CreateGroupInService.kind => CreateGroupInService(
        service: Service.fromJson(subject),
      ),
      _ => const CreateBlankGroup(),
    };
  }
}

sealed class CreateGroup extends GroupEditIntent {
  const CreateGroup();

  Group draftGroup(String id);
}

final class CreateBlankGroup extends CreateGroup {
  static const String kind = 'create';

  const CreateBlankGroup();

  @override
  Group draftGroup(String id) => Group(id: id, name: '');

  @override
  Json toJson() => EditIntentJson.ofKind(kind);
}

final class CreateGroupInService extends CreateGroup {
  static const String kind = 'inService';

  final Service service;

  const CreateGroupInService({required this.service});

  @override
  Group draftGroup(String id) =>
      Group(id: id, name: '', service: service, serviceId: service.id);

  @override
  Json toJson() => EditIntentJson.ofKind(kind, service);
}

final class UpdateGroup extends GroupEditIntent {
  static const String kind = 'update';

  final Group group;

  const UpdateGroup({required this.group});

  @override
  Json toJson() => EditIntentJson.ofKind(kind, group);
}
