import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final codec = ChurchAdminRouterExtraCodec();

  EditStreetExtra roundTrip(EditStreetExtra extra) {
    final wire = jsonDecode(jsonEncode(codec.encode(extra))) as List;

    return switch (codec.decode(wire)) {
      final EditStreetExtra extra => extra,
      final other => throw StateError('Decoded $other'),
    };
  }

  const street = Street(id: 'street-1', name: 'Street');
  const area = Area(id: 'area-1', name: 'Area');

  group('EditStreetExtra router extra', () {
    test('an extra carrying a street survives the codec with its street', () {
      final restored = roundTrip(const EditStreetExtra(street: street));

      expect(restored.street, street);
    });

    test('an extra carrying an area survives the codec with its area', () {
      final restored = roundTrip(const EditStreetExtra(area: area));

      expect(restored.area, area);
    });
  });
}
