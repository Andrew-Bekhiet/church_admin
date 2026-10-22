import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const family = Family(id: 'family-1', name: 'عائلة');

  StoreEditIntent roundTrip(StoreEditIntent intent) =>
      StoreEditIntent.fromJson(jsonDecode(jsonEncode(intent.toJson())));

  group('StoreEditIntent after a JSON round trip', () {
    test('an update intent survives JSON with its store', () {
      const store = Store(id: 'store-1', name: 'محل');

      final restored = roundTrip(const UpdateStore(store: store));

      expect((restored as UpdateStore).store, store);
    });

    test('a blank create intent survives JSON', () {
      expect(roundTrip(const CreateBlankStore()), isA<CreateBlankStore>());
    });

    test('a create for a family survives JSON with its family', () {
      final restored = roundTrip(const CreateStoreOfFamily(family: family));

      expect((restored as CreateStoreOfFamily).family, family);
    });
  });

  test("a store created for a family is drafted as that family's", () {
    final draft = const CreateStoreOfFamily(family: family).draftStore('id');

    expect((draft.family, draft.familyId), (family, family.id));
  });
}
