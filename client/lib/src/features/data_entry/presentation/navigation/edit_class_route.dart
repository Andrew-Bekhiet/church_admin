part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditClassRoute extends HomeChildRoute {
  static const String routePath = '/edit_class';

  final ClassEditIntent? intent;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [intent];

  const EditClassRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditClassScreen(intent: intent ?? const CreateBlankClass());
  }
}
