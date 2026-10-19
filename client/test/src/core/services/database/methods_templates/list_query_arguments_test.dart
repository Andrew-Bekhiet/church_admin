import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const filterTranslator = AshFilterTranslator();
  const sortTranslator = AshSortTranslator();
  final visible = Filter(ChurchFields().isHidden, BooleanOperator.is$, false);
  final byName = OrderBy(field: ChurchFields().name);

  test('a list without filters or order sends neither', () {
    expect(
      ListQueryArguments.fromParameters(
        const StreamableDAOParameters<Church>(),
      ).toVariables(),
      isEmpty,
    );
  });

  test('the defaults apply when the list brings no filters or order', () {
    expect(
      ListQueryArguments.fromParameters(
        null,
        defaultWhere: [visible],
        defaultOrderBy: [byName],
      ).toVariables(),
      {
        'filter': filterTranslator.toFilterInput([visible]),
        'sort': sortTranslator.toSortInput([byName]),
      },
    );
  });

  test("the list's own filters and order replace the defaults", () {
    final named = Filter(ChurchFields().name, StringOperator.eq, 'العذراء');
    final descending = OrderBy(
      field: ChurchFields().name,
      value: OrderByValue.desc,
    );

    expect(
      ListQueryArguments.fromParameters(
        StreamableDAOParameters<Church>(where: [named], orderBy: [descending]),
        defaultWhere: [visible],
        defaultOrderBy: [byName],
      ).toVariables(),
      {
        'filter': filterTranslator.toFilterInput([named]),
        'sort': sortTranslator.toSortInput([descending]),
      },
    );
  });

  test('a search narrows the filters to names containing the text', () {
    const search = 'جرجس';

    expect(
      ListQueryArguments.fromParameters(
        const StreamableDAOParameters<Church>(search: search),
        defaultWhere: [visible],
      ).filter,
      {
        'and': [
          filterTranslator.toFilterInput([visible]),
          {
            'name': {'ilike': '%$search%'},
          },
        ],
      },
    );
  });
}
