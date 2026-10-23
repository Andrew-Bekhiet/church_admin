part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditStoreRoute extends HomeChildRoute {
  static const String routePath = '/edit_store';

  final StoreEditIntent? intent;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties =>
      (intent ?? const CreateBlankStore()).analyticsProperties;

  @override
  List<Object?> get props => [intent];

  const EditStoreRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditStoreScreen(intent: intent ?? const CreateBlankStore());
  }
}
