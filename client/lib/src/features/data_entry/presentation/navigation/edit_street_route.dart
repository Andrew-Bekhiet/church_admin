part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditStreetRoute extends HomeChildRoute {
  static const String routePath = '/edit_street';

  final StreetEditIntent? intent;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties =>
      (intent ?? const CreateBlankStreet()).analyticsProperties;

  @override
  List<Object?> get props => [intent];

  const EditStreetRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditStreetScreen(intent: intent ?? const CreateBlankStreet());
  }
}
