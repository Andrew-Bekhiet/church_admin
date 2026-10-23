import 'package:church_admin/church_admin.dart';

sealed class StreetEditIntent extends SerializableExtra {
  @override
  String get typeName => 'StreetEditIntent';

  Json get analyticsProperties => switch (this) {
    CreateStreetInArea(:final area) => {
      'intent_kind': CreateStreetInArea.kind,
      'area_id': area.id,
    },
    CreateBlankStreet() => {'intent_kind': CreateBlankStreet.kind},
    UpdateStreet(:final street) => {
      'intent_kind': UpdateStreet.kind,
      'street_id': street.id,
    },
  };

  const StreetEditIntent();

  factory StreetEditIntent.fromJson(Json json) {
    late final subject = EditIntentJson.subjectOf(
      json,
      intentName: 'StreetEditIntent',
    );

    return switch (json[EditIntentJson.kindKey]) {
      UpdateStreet.kind => UpdateStreet(street: Street.fromJson(subject)),
      CreateStreetInArea.kind => CreateStreetInArea(
        area: Area.fromJson(subject),
      ),
      _ => const CreateBlankStreet(),
    };
  }
}

sealed class CreateStreet extends StreetEditIntent {
  const CreateStreet();

  Street draftStreet(String id);
}

final class CreateBlankStreet extends CreateStreet {
  static const String kind = 'create';

  const CreateBlankStreet();

  @override
  Street draftStreet(String id) => Street(id: id, name: '', areas: const []);

  @override
  Json toJson() => EditIntentJson.ofKind(kind);
}

final class CreateStreetInArea extends CreateStreet {
  static const String kind = 'inArea';

  final Area area;

  const CreateStreetInArea({required this.area});

  @override
  Street draftStreet(String id) => Street(id: id, name: '', areas: [area]);

  @override
  Json toJson() => EditIntentJson.ofKind(kind, area);
}

final class UpdateStreet extends StreetEditIntent {
  static const String kind = 'update';

  final Street street;

  const UpdateStreet({required this.street});

  @override
  Json toJson() => EditIntentJson.ofKind(kind, street);
}
