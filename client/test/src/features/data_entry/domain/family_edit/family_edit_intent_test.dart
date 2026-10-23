import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const family = Family(id: 'family-1', name: 'عائلة');
  const address = Address(
    area: Area(id: 'area-1', name: 'شبرا'),
  );

  FamilyEditIntent roundTrip(FamilyEditIntent intent) =>
      FamilyEditIntent.fromJson(jsonDecode(jsonEncode(intent.toJson())));

  group('FamilyEditIntent after a JSON round trip', () {
    test('an update intent survives JSON with its family', () {
      final restored = roundTrip(const UpdateFamily(family: family));

      expect((restored as UpdateFamily).family, family);
    });

    test('a blank create intent survives JSON', () {
      expect(roundTrip(const CreateBlankFamily()), isA<CreateBlankFamily>());
    });

    test('a create at an address survives JSON with its address', () {
      final restored = roundTrip(
        const CreateFamilyAtAddress(address: address),
      );

      expect((restored as CreateFamilyAtAddress).address, address);
    });

    test('a create of a child family survives JSON with its parent', () {
      final restored = roundTrip(const CreateChildFamilyOf(parent: family));

      expect((restored as CreateChildFamilyOf).parent, family);
    });

    test('a create of a parent family survives JSON with its child', () {
      final restored = roundTrip(const CreateParentFamilyOf(child: family));

      expect((restored as CreateParentFamilyOf).child, family);
    });
  });

  group('drafting a new family', () {
    test('a create at an address lives at that address', () {
      expect(
        const CreateFamilyAtAddress(address: address).draftFamily('id').address,
        address,
      );
    });

    test('a child family has the family it was added from as a parent', () {
      expect(
        const CreateChildFamilyOf(parent: family).draftFamily('id').parents,
        [family],
      );
    });

    test('a parent family has the family it was added from as a child', () {
      expect(
        const CreateParentFamilyOf(child: family).draftFamily('id').children,
        [family],
      );
    });
  });
}
