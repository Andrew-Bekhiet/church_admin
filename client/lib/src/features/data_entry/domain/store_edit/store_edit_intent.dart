import 'package:church_admin/church_admin.dart';

sealed class StoreEditIntent extends SerializableExtra {
  @override
  String get typeName => 'StoreEditIntent';

  Json get analyticsProperties => switch (this) {
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

  const StoreEditIntent();

  factory StoreEditIntent.fromJson(Json json) {
    late final subject = EditIntentJson.subjectOf(
      json,
      intentName: 'StoreEditIntent',
    );

    return switch (json[EditIntentJson.kindKey]) {
      UpdateStore.kind => UpdateStore(store: Store.fromJson(subject)),
      CreateStoreOfFamily.kind => CreateStoreOfFamily(
        family: Family.fromJson(subject),
      ),
      _ => const CreateBlankStore(),
    };
  }
}

sealed class CreateStore extends StoreEditIntent {
  const CreateStore();

  Store draftStore(String id);
}

final class CreateBlankStore extends CreateStore {
  static const String kind = 'create';

  const CreateBlankStore();

  @override
  Store draftStore(String id) => Store(id: id, name: '');

  @override
  Json toJson() => EditIntentJson.ofKind(kind);
}

final class CreateStoreOfFamily extends CreateStore {
  static const String kind = 'ofFamily';

  final Family family;

  const CreateStoreOfFamily({required this.family});

  @override
  Store draftStore(String id) =>
      Store(id: id, name: '', family: family, familyId: family.id);

  @override
  Json toJson() => EditIntentJson.ofKind(kind, family);
}

final class UpdateStore extends StoreEditIntent {
  static const String kind = 'update';

  final Store store;

  const UpdateStore({required this.store});

  @override
  Json toJson() => EditIntentJson.ofKind(kind, store);
}
