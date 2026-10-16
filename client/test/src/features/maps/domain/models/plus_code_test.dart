import 'dart:io';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('reading a plus code', () {
    for (final [code, isValid, isShort, _] in _OpenLocationCodeTestData.rows(
      'validityTests.csv',
    )) {
      final (kind, matcher) = switch ((isValid, isShort)) {
        ('true', 'true') => ('a short code', isA<ShortPlusCode>()),
        ('true', _) => ('a full code', isA<FullPlusCode>()),
        _ => ('not a plus code', isNull),
      };

      test('$code is $kind', () {
        expect(PlusCode.tryParse(code), matcher);
      });
    }
  });

  group('a full code covers its area', () {
    for (final [code, _, south, west, north, east]
        in _OpenLocationCodeTestData.rows('decoding.csv')) {
      test(code, () {
        expect(
          PlusCode.tryParse(code),
          isA<FullPlusCode>()
              .having(
                (area) => area.southWest.latitude,
                'south',
                closeTo(double.parse(south), 1e-10),
              )
              .having(
                (area) => area.southWest.longitude,
                'west',
                closeTo(double.parse(west), 1e-10),
              )
              .having(
                (area) => area.northEast.latitude,
                'north',
                closeTo(double.parse(north), 1e-10),
              )
              .having(
                (area) => area.northEast.longitude,
                'east',
                closeTo(double.parse(east), 1e-10),
              ),
        );
      });
    }
  });

  group('a short code is the location nearest its reference', () {
    for (final [fullCode, latitude, longitude, shortCode, testType]
        in _OpenLocationCodeTestData.rows('shortCodeTests.csv')) {
      if (testType == 'S') continue;

      test('$shortCode near $latitude, $longitude is $fullCode', () {
        final reference = Point(
          double.parse(latitude),
          double.parse(longitude),
        );

        final expected = _OpenLocationCodeTestData.centerOf(fullCode);

        expect(
          _OpenLocationCodeTestData.plusCode(
            shortCode,
          ).locationNearest(reference),
          isA<Point>()
              .having(
                (location) => location.latitude,
                'latitude',
                closeTo(expected.latitude, 1e-9),
              )
              .having(
                (location) => location.longitude,
                'longitude',
                closeTo(expected.longitude, 1e-9),
              ),
        );
      });
    }
  });
}

abstract final class _OpenLocationCodeTestData {
  static List<List<String>> rows(String fileName) =>
      File(
            'test/src/features/maps/domain/models/open_location_code_test_data/$fileName',
          )
          .readAsLinesSync()
          .where((line) => line.isNotEmpty && !line.startsWith('#'))
          .map((line) => line.split(','))
          .toList();

  static Point centerOf(String fullCode) => switch (PlusCode.tryParse(
    fullCode,
  )) {
    FullPlusCode(:final center) => center,
    _ => throw ArgumentError.value(fullCode, 'fullCode', 'not a full code'),
  };

  static PlusCode plusCode(String code) =>
      PlusCode.tryParse(code) ??
      (throw ArgumentError.value(code, 'code', 'not a plus code'));
}
