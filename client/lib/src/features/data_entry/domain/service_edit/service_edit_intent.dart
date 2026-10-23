import 'package:church_admin/church_admin.dart';

sealed class ServiceEditIntent extends SerializableExtra {
  @override
  String get typeName => 'ServiceEditIntent';

  Json get analyticsProperties => switch (this) {
    CreateBlankService() => {'intent_kind': CreateBlankService.kind},
    UpdateService(:final service) => {
      'intent_kind': UpdateService.kind,
      'service_id': service.id,
    },
  };

  const ServiceEditIntent();

  factory ServiceEditIntent.fromJson(Json json) =>
      switch (json[EditIntentJson.kindKey]) {
        UpdateService.kind => UpdateService(
          service: Service.fromJson(
            EditIntentJson.subjectOf(json, intentName: 'ServiceEditIntent'),
          ),
        ),
        _ => const CreateBlankService(),
      };
}

sealed class CreateService extends ServiceEditIntent {
  const CreateService();

  Service draftService(String id);
}

final class CreateBlankService extends CreateService {
  static const String kind = 'create';

  const CreateBlankService();

  @override
  Service draftService(String id) => Service(id: id, name: '');

  @override
  Json toJson() => EditIntentJson.ofKind(kind);
}

final class UpdateService extends ServiceEditIntent {
  static const String kind = 'update';

  final Service service;

  const UpdateService({required this.service});

  @override
  Json toJson() => EditIntentJson.ofKind(kind, service);
}
