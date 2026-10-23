import 'package:church_admin/church_admin.dart';

sealed class PickerAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'picker';

  const PickerAnalyticsEvent();
}

final class PickerCustomItemCreate extends PickerAnalyticsEvent {
  final PickerObjectType objectType;

  @override
  String get objectAction => 'custom_item_create';

  @override
  Json get properties => {'object_type': objectType.name};

  const PickerCustomItemCreate(this.objectType);
}

final class PickerValueClear extends PickerAnalyticsEvent {
  final PickerFieldKind fieldKind;

  @override
  String get objectAction => 'value_clear';

  @override
  Json get properties => {'field_kind': fieldKind.name};

  const PickerValueClear(this.fieldKind);
}

enum PickerObjectType {
  college,
  school,
  qualification,
  job,
  church,
  father,
  hobby,
  tag,
  personType,
}

enum PickerFieldKind {
  date,
  dateRange,
  studyYearRange,
  color,
  singleObject,
  multiObject,
}
