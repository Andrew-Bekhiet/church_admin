part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditAreaRoute extends HomeChildRoute {
  static const String routePath = '/edit_area';

  final AreaEditIntent? intent;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties =>
      (intent ?? const CreateBlankArea()).analyticsProperties;

  @override
  List<Object?> get props => [intent];

  const EditAreaRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditAreaScreen(intent: intent ?? const CreateBlankArea());
  }
}
