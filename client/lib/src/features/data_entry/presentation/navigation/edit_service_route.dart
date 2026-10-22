part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditServiceRoute extends HomeChildRoute {
  static const String routePath = '/edit_service';

  final ServiceEditIntent? intent;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [intent];

  const EditServiceRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditServiceScreen(intent: intent ?? const CreateBlankService());
  }
}
