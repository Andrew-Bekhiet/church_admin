part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class DataEntryAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'data_entry';

  const DataEntryAnalyticsEvent();
}

final class ObjectSaveAttempt extends DataEntryAnalyticsEvent {
  final Json entityProperties;
  final bool isCreate;
  final ObjectSaveResult outcome;
  final Duration formOpenDuration;
  final List<PersonRuleViolationKind>? ruleViolationKinds;
  final bool? isDefaultMeetingCreated;

  @override
  String get objectAction => 'object_save_attempt';

  @override
  Json get properties => {
    ...entityProperties,
    'is_create': isCreate,
    'outcome': outcome.name,
    'form_open_duration_ms': formOpenDuration.inMilliseconds,
    if (ruleViolationKinds case final kinds?)
      'rule_violations': [for (final kind in kinds) kind.name],
    if (isDefaultMeetingCreated case final isCreated?)
      'is_default_meeting_created': isCreated,
  };

  ObjectSaveAttempt({
    required ViewableWithID entity,
    required this.isCreate,
    required this.outcome,
    required this.formOpenDuration,
    Set<PersonRuleViolation>? ruleViolations,
    this.isDefaultMeetingCreated,
  }) : entityProperties = AnalyticsEntityType.propertiesOf(entity),
       ruleViolationKinds = ruleViolations
           ?.map(PersonRuleViolationKind.of)
           .toList(growable: false);
}

final class ObjectDelete extends DataEntryAnalyticsEvent {
  final Json entityProperties;
  final bool isSuccess;

  @override
  String get objectAction => 'object_delete';

  @override
  Json get properties => {...entityProperties, 'is_success': isSuccess};

  ObjectDelete(ViewableWithID entity, {required this.isSuccess})
    : entityProperties = AnalyticsEntityType.propertiesOf(entity);
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
