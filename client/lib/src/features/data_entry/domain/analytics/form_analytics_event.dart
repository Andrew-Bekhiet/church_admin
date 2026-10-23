import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

sealed class FormAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'form';

  const FormAnalyticsEvent();
}

final class FirstInvalidFieldFocus extends FormAnalyticsEvent {
  final ViewableWithID entity;
  final int invalidFieldCount;

  @override
  String get objectAction => 'first_invalid_field_focus';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(entity),
    'invalid_field_count': invalidFieldCount,
  };

  const FirstInvalidFieldFocus(this.entity, {required this.invalidFieldCount});
}

final class DiscardPromptShow extends FormAnalyticsEvent {
  final ViewableWithID entity;

  @override
  String get objectAction => 'discard_prompt_show';

  @override
  Json get properties => AnalyticsEntityType.propertiesOf(entity);

  const DiscardPromptShow(this.entity);
}

final class DiscardPromptAnswer extends FormAnalyticsEvent {
  final ViewableWithID entity;
  final bool isDiscarded;

  @override
  String get objectAction => 'discard_prompt_answer';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(entity),
    'is_discarded': isDiscarded,
  };

  const DiscardPromptAnswer(this.entity, {required this.isDiscarded});
}

final class OutOfSightWarningShow extends FormAnalyticsEvent {
  final ViewableWithID entity;

  @override
  String get objectAction => 'out_of_sight_warning_show';

  @override
  Json get properties => AnalyticsEntityType.propertiesOf(entity);

  const OutOfSightWarningShow(this.entity);
}

final class OutOfSightWarningAnswer extends FormAnalyticsEvent {
  final ViewableWithID entity;
  final bool isConfirmed;

  @override
  String get objectAction => 'out_of_sight_warning_answer';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(entity),
    'is_confirmed': isConfirmed,
  };

  const OutOfSightWarningAnswer(this.entity, {required this.isConfirmed});
}

final class DefaultMeetingOptOutToggle extends FormAnalyticsEvent {
  final bool isDefaultMeetingCreated;

  @override
  String get objectAction => 'default_meeting_opt_out_toggle';

  @override
  Json get properties => {
    'is_default_meeting_created': isDefaultMeetingCreated,
  };

  const DefaultMeetingOptOutToggle({required this.isDefaultMeetingCreated});
}

final class MembershipServiceSelect extends FormAnalyticsEvent {
  final PersonMemberships selection;

  @override
  String get objectAction => 'membership_service_select';

  @override
  Json get properties => {
    'service_count': selection.services.length,
    'auto_selected_group_count': selection.groups.length,
    if (selection.services.singleOrNull case final service?)
      'service_id': service.id,
  };

  const MembershipServiceSelect(this.selection);
}
