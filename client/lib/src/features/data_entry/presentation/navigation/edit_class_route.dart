part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditClassRoute extends HomeChildRoute {
  static const String routePath = '/edit_class';

  final ClassEditIntent? intent;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties => switch (intent ?? const CreateBlankClass()) {
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

  @override
  List<Object?> get props => [intent];

  const EditClassRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditClassScreen(intent: intent ?? const CreateBlankClass());
  }
}
