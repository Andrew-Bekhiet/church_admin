import 'package:church_admin/church_admin.dart';

sealed class DataEntryAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'data_entry';

  const DataEntryAnalyticsEvent();
}

final class ObjectSave extends DataEntryAnalyticsEvent {
  final ViewableWithID entity;
  final bool isCreate;
  final ObjectSaveResult result;
  final Duration sinceFormOpened;
  final Set<PersonRuleViolation>? ruleViolations;
  final bool? isDefaultMeetingCreated;

  @override
  String get objectAction => 'object_save';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(entity),
    'is_create': isCreate,
    'outcome': result.name,
    'duration_ms': sinceFormOpened.inMilliseconds,
    if (ruleViolations case final violations?)
      'rule_violations': [
        for (final violation in violations)
          PersonRuleViolationKind.of(violation).name,
      ],
    if (isDefaultMeetingCreated case final isCreated?)
      'is_default_meeting_created': isCreated,
  };

  const ObjectSave({
    required this.entity,
    required this.isCreate,
    required this.result,
    required this.sinceFormOpened,
    this.ruleViolations,
    this.isDefaultMeetingCreated,
  });
}

final class ObjectDelete extends DataEntryAnalyticsEvent {
  final ViewableWithID entity;
  final bool isSuccess;

  @override
  String get objectAction => 'object_delete';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(entity),
    'is_success': isSuccess,
  };

  const ObjectDelete(this.entity, {required this.isSuccess});
}

enum PersonRuleViolationKind {
  nothingPlacesThePerson,
  addressChangeBlockedByMove,
  servicesOutsideStudyYear,
  noServiceOrGroupToKeepPersonEditable;

  static PersonRuleViolationKind of(PersonRuleViolation violation) =>
      switch (violation) {
        NothingPlacesThePerson() => nothingPlacesThePerson,
        AddressChangeBlockedByMove() => addressChangeBlockedByMove,
        ServicesOutsideStudyYear() => servicesOutsideStudyYear,
        NoServiceOrGroupToKeepPersonEditable() =>
          noServiceOrGroupToKeepPersonEditable,
      };
}
