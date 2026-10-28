part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class FormAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'form';

  const FormAnalyticsEvent();
}

sealed class FormEntityAnalyticsEvent extends FormAnalyticsEvent {
  final Json entityProperties;

  @override
  Json get properties => entityProperties;

  FormEntityAnalyticsEvent(ViewableWithID entity)
    : entityProperties = AnalyticsEntityType.propertiesOf(entity);
}

final class FirstInvalidFieldFocus extends FormEntityAnalyticsEvent {
  final int invalidFieldCount;

  @override
  String get objectAction => 'first_invalid_field_focus';

  @override
  Json get properties => {
    ...entityProperties,
    'invalid_field_count': invalidFieldCount,
  };

  FirstInvalidFieldFocus(super.entity, {required this.invalidFieldCount});
}

final class DiscardPromptShow extends FormEntityAnalyticsEvent {
  @override
  String get objectAction => 'discard_prompt_show';

  DiscardPromptShow(super.entity);
}

final class DiscardPromptAnswer extends FormEntityAnalyticsEvent {
  final bool isDiscarded;

  @override
  String get objectAction => 'discard_prompt_answer';

  @override
  Json get properties => {...entityProperties, 'is_discarded': isDiscarded};

  DiscardPromptAnswer(super.entity, {required this.isDiscarded});
}

final class OutOfSightWarningShow extends FormEntityAnalyticsEvent {
  @override
  String get objectAction => 'out_of_sight_warning_show';

  OutOfSightWarningShow(super.entity);
}

final class OutOfSightWarningAnswer extends FormEntityAnalyticsEvent {
  final bool isConfirmed;

  @override
  String get objectAction => 'out_of_sight_warning_answer';

  @override
  Json get properties => {...entityProperties, 'is_confirmed': isConfirmed};

  OutOfSightWarningAnswer(super.entity, {required this.isConfirmed});
}

final class MembershipServiceSelect extends FormAnalyticsEvent {
  final int serviceCount;
  final int autoSelectedGroupCount;
  final String? singleServiceId;

  @override
  String get objectAction => 'membership_service_select';

  @override
  Json get properties => {
    'service_count': serviceCount,
    'auto_selected_group_count': autoSelectedGroupCount,
    if (singleServiceId case final serviceId?)
      AnalyticsEntityType.service.idProperty: serviceId,
  };

  MembershipServiceSelect(PersonMemberships selection)
    : serviceCount = selection.services.length,
      autoSelectedGroupCount = selection.groups.length,
      singleServiceId = selection.services.singleOrNull?.id;
}
