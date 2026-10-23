import 'package:church_admin/church_admin.dart';

sealed class AreaEditIntent extends SerializableExtra {
  @override
  String get typeName => 'AreaEditIntent';

  const AreaEditIntent();

  factory AreaEditIntent.fromJson(Json json) =>
      switch (json[EditIntentJson.kindKey]) {
        UpdateArea.kind => UpdateArea(
          area: Area.fromJson(
            EditIntentJson.subjectOf(json, intentName: 'AreaEditIntent'),
          ),
        ),
        _ => const CreateBlankArea(),
      };
}

sealed class CreateArea extends AreaEditIntent {
  const CreateArea();

  Area draftArea(String id);
}

final class CreateBlankArea extends CreateArea {
  static const String kind = 'create';

  const CreateBlankArea();

  @override
  Area draftArea(String id) => Area(id: id, name: '');

  @override
  Json toJson() => EditIntentJson.ofKind(kind);
}

final class UpdateArea extends AreaEditIntent {
  static const String kind = 'update';

  final Area area;

  const UpdateArea({required this.area});

  @override
  Json toJson() => EditIntentJson.ofKind(kind, area);
}
