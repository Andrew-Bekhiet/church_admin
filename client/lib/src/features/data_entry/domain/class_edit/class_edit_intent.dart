import 'package:church_admin/church_admin.dart';

sealed class ClassEditIntent extends SerializableExtra {
  @override
  String get typeName => 'ClassEditIntent';

  Json get analyticsProperties => switch (this) {
    CreateClassInService(:final service) => {
      'intent_kind': CreateClassInService.kind,
      'service_id': service.id,
    },
    CreateBlankClass() => {'intent_kind': CreateBlankClass.kind},
    UpdateClass(:final class$) => {
      'intent_kind': UpdateClass.kind,
      'class_id': class$.id,
    },
  };

  const ClassEditIntent();

  factory ClassEditIntent.fromJson(Json json) {
    late final subject = EditIntentJson.subjectOf(
      json,
      intentName: 'ClassEditIntent',
    );

    return switch (json[EditIntentJson.kindKey]) {
      UpdateClass.kind => UpdateClass(class$: Class.fromJson(subject)),
      CreateClassInService.kind => CreateClassInService(
        service: Service.fromJson(subject),
      ),
      _ => const CreateBlankClass(),
    };
  }
}

sealed class CreateClass extends ClassEditIntent {
  const CreateClass();

  Class draftClass(String id);
}

final class CreateBlankClass extends CreateClass {
  static const String kind = 'create';

  const CreateBlankClass();

  @override
  Class draftClass(String id) => Class(id: id, name: '');

  @override
  Json toJson() => EditIntentJson.ofKind(kind);
}

final class CreateClassInService extends CreateClass {
  static const String kind = 'inService';

  final Service service;

  const CreateClassInService({required this.service});

  @override
  Class draftClass(String id) =>
      Class(id: id, name: '', service: service, serviceId: service.id);

  @override
  Json toJson() => EditIntentJson.ofKind(kind, service);
}

final class UpdateClass extends ClassEditIntent {
  static const String kind = 'update';

  final Class class$;

  const UpdateClass({required this.class$});

  @override
  Json toJson() => EditIntentJson.ofKind(kind, class$);
}
