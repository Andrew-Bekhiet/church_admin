import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const area = Area(id: 'area-1', name: 'شبرا');

  StreetEditIntent roundTrip(StreetEditIntent intent) =>
      StreetEditIntent.fromJson(jsonDecode(jsonEncode(intent.toJson())));

  group('StreetEditIntent after a JSON round trip', () {
    test('an update intent survives JSON with its street', () {
      const street = Street(id: 'street-1', name: 'شارع النيل');

      final restored = roundTrip(const UpdateStreet(street: street));

      expect((restored as UpdateStreet).street, street);
    });

    test('a blank create intent survives JSON', () {
      expect(roundTrip(const CreateBlankStreet()), isA<CreateBlankStreet>());
    });

    test('a create in an area survives JSON with its area', () {
      final restored = roundTrip(const CreateStreetInArea(area: area));

      expect((restored as CreateStreetInArea).area, area);
    });
  });

  test('an update kind without a street is rejected as a format error', () {
    expect(
      () => StreetEditIntent.fromJson(const {'kind': UpdateStreet.kind}),
      throwsFormatException,
    );
  });

  group('drafting a new street', () {
    test('a blank create belongs to no area', () {
      expect(const CreateBlankStreet().draftStreet('new-id').areas, isEmpty);
    });

    test('a create in an area belongs to that area', () {
      expect(
        const CreateStreetInArea(area: area).draftStreet('new-id').areas,
        [area],
      );
    });
  });
}
