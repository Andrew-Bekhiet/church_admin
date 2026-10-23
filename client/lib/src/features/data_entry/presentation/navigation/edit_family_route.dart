part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditFamilyRoute extends HomeChildRoute {
  static const String routePath = '/edit_family';

  final FamilyEditIntent? intent;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties =>
      (intent ?? const CreateBlankFamily()).analyticsProperties;

  @override
  List<Object?> get props => [intent];

  const EditFamilyRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditFamilyScreen(intent: intent ?? const CreateBlankFamily());
  }
}
