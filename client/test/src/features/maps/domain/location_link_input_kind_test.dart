import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('A pasted location link is classified as', () {
    for (final (input, kind) in [
      (
        'https://www.google.com/maps/place/30.0444,31.2357',
        LocationLinkInputKind.url,
      ),
      ('https://maps.app.goo.gl/AbCdEf123', LocationLinkInputKind.shortLink),
      ('https://goo.gl/maps/AbCdEf123', LocationLinkInputKind.shortLink),
      ('geo:30.0444,31.2357', LocationLinkInputKind.geo),
      ('7GXHX4HM+3J', LocationLinkInputKind.plusCode),
      ('X4HM+3J', LocationLinkInputKind.shortPlusCode),
      ('X4HM+3J Cairo', LocationLinkInputKind.shortPlusCode),
      ('my house', LocationLinkInputKind.other),
    ]) {
      test('${kind.name} when it is "$input"', () {
        expect(LocationLinkInputKind.of(input), kind);
      });
    }
  });
}
