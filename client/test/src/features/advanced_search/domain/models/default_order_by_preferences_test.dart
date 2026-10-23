import 'dart:convert';
import 'dart:io';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final defaults = (jsonDecode(
    File(
      '../server/ash/priv/defaults/order_by_preferences.json',
    ).readAsStringSync(),
  ) as Map).cast<String, List<dynamic>>();

  for (final MapEntry(key: storageKey, value: sort) in defaults.entries) {
    for (final (index, entry) in sort.indexed) {
      test(
        'sort key ${index + 1} of the default $storageKey sort reads back as '
        'the field it names',
        () {
          final stored = Json.from(entry as Map);
          final storedField = Json.from(stored['field'] as Map);

          final orderBy = OrderBy.fromJson(stored);

          expect(orderBy.value.name, stored['value']);
          expect(
            orderBy.field.toJson(),
            allOf([
              for (final MapEntry(:key, :value) in storedField.entries)
                containsPair(key, value),
            ]),
          );
        },
      );
    }
  }
}
