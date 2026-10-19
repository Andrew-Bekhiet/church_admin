import 'package:church_admin/church_admin.dart';

class AshSortTranslator {
  const AshSortTranslator();

  List<Json> toSortInput(List<OrderBy> orderBy) => [
    for (final OrderBy(:field, :value) in orderBy)
      {
        'field': AshNaming.screamingSnake(
          AshNaming.camelJoin(AshFieldPath.forSort(field).segments),
        ),
        'order': switch (value) {
          OrderByValue.asc => 'ASC_NULLS_LAST',
          OrderByValue.desc => 'DESC_NULLS_LAST',
        },
      },
  ];
}
