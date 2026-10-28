part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class PickerAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'picker';

  const PickerAnalyticsEvent();
}

final class PickerCustomItemCreate extends PickerAnalyticsEvent {
  final PickerObjectType pickerObjectType;

  @override
  String get objectAction => 'custom_item_create';

  @override
  Json get properties => {'picker_object_type': pickerObjectType.name};

  const PickerCustomItemCreate(this.pickerObjectType);
}

final class PickerValueClear extends PickerAnalyticsEvent {
  final PickerFieldKind fieldKind;

  @override
  String get objectAction => 'value_clear';

  @override
  Json get properties => {'field_kind': fieldKind.name};

  const PickerValueClear(this.fieldKind);
}
