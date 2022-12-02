import 'package:church_admin/graphql/scalars/uuid.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

void main() {
  const uuid = Uuid();
  test(
    'uuidToString',
    () {
      final value = uuid.v4obj();
      expect(uuidToString(value), value.toString());
    },
  );

  test(
    'uuidFromString',
    () {
      final value = uuid.v4obj();
      expect(stringToUuid(value.toString()), value);
    },
  );

  test(
    'uuidFromString <=> uuidToString',
    () {
      final value = uuid.v4obj();

      expect(uuidToString(stringToUuid(value.toString())), value.toString());
      expect(stringToUuid(uuidToString(value)), value);
    },
  );
}
