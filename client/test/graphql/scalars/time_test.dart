import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('timeFromString', () {
    const timeString = '2022-01-01T00:00:00';
    final result = timeFromString(timeString);

    expect(result, DateTime.parse(timeString));
  });

  test('timeToString ', () {
    final time = DateTime.utc(2022);
    final result = timeToString(time);

    expect(result, '2022-01-01T00:00:00.000');
  });
}
