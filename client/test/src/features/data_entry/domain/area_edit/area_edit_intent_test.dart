import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  AreaEditIntent roundTrip(AreaEditIntent intent) =>
      AreaEditIntent.fromJson(jsonDecode(jsonEncode(intent.toJson())));

  group('AreaEditIntent after a JSON round trip', () {
    test('an update intent survives JSON with its area', () {
      const area = Area(id: 'area-1', name: 'شبرا');

      final restored = roundTrip(const UpdateArea(area: area));

      expect((restored as UpdateArea).area, area);
    });

    test('a blank create intent survives JSON', () {
      expect(roundTrip(const CreateBlankArea()), isA<CreateBlankArea>());
    });
  });

  test('an update kind without an area is rejected as a format error', () {
    expect(
      () => AreaEditIntent.fromJson(const {'kind': UpdateArea.kind}),
      throwsFormatException,
    );
  });

  test('a blank create drafts an unnamed area with the given id', () {
    expect(
      const CreateBlankArea().draftArea('new-id'),
      const Area(id: 'new-id', name: ''),
    );
  });
}
