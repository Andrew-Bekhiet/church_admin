part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditServiceRoute extends HomeChildRoute {
  static const String routePath = '/edit_service';

  final ServiceEditIntent? intent;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties =>
      switch (intent ?? const CreateBlankService()) {
        CreateBlankService() => {'intent_kind': CreateBlankService.kind},
        UpdateService(:final service) => {
          'intent_kind': UpdateService.kind,
          'service_id': service.id,
        },
      };

  @override
  List<Object?> get props => [intent];

  const EditServiceRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditServiceScreen(intent: intent ?? const CreateBlankService());
  }
}
