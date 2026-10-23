part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditStoreRoute extends HomeChildRoute {
  static const String routePath = '/edit_store';

  final StoreEditIntent? intent;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties => switch (intent ?? const CreateBlankStore()) {
    CreateStoreOfFamily(:final family) => {
      'intent_kind': CreateStoreOfFamily.kind,
      'family_id': family.id,
    },
    CreateBlankStore() => {'intent_kind': CreateBlankStore.kind},
    UpdateStore(:final store) => {
      'intent_kind': UpdateStore.kind,
      'store_id': store.id,
    },
  };

  @override
  List<Object?> get props => [intent];

  const EditStoreRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditStoreScreen(intent: intent ?? const CreateBlankStore());
  }
}
