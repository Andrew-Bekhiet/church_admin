import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

sealed class ListAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'list';

  const ListAnalyticsEvent();
}

final class ListArrangementSave extends ListAnalyticsEvent {
  final QueryableType objectType;
  final ListArrangement arrangement;

  @override
  String get objectAction => 'arrangement_save';

  @override
  Json get properties => {
    'object_type': objectType.name,
    'sort_field_count': arrangement.orderBy.length,
    if (arrangement.orderBy.firstOrNull case final primarySort?) ...{
      'sort_field': primarySort.field.name,
      'sort_direction': primarySort.value.name,
    },
    'has_second_line': arrangement.secondLineField != null,
  };

  const ListArrangementSave(this.objectType, this.arrangement);
}

final class ListMultiSelectOpen extends ListAnalyticsEvent {
  final Object firstSelected;

  @override
  String get objectAction => 'multi_select_open';

  @override
  Json get properties => {
    if (AnalyticsEntityType.of(firstSelected) case final type?)
      'object_type': type.key,
  };

  const ListMultiSelectOpen(this.firstSelected);
}
