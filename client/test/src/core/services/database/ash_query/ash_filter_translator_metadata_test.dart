import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'sample_filters.dart';

void main() {
  const translator = AshFilterTranslator();

  for (final queryable in SampleFilters.entityQueryables) {
    test('every operator of every ${queryable.name} field translates', () {
      final failures = <String>[];

      for (final sample in SampleFilters.ofQueryable(queryable)) {
        try {
          final translated = translator.toFilterInput([sample.filter]);
          if (translated.isEmpty) failures.add('${sample.description}: empty');
        } on Object catch (error) {
          failures.add('${sample.description}: $error');
        }
      }

      expect(failures, isEmpty);
    });
  }

  test('the sampled metadata covers the operator-bearing queryables', () {
    final sampled = SampleFilters.entityQueryables.map((q) => q.name);

    expect(
      sampled,
      containsAll(['Person', 'Family', 'Area', 'Street', 'Service', 'User']),
    );
  });
}
