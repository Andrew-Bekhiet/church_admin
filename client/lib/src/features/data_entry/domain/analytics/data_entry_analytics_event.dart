part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class DataEntryAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'data_entry';

  const DataEntryAnalyticsEvent();
}

sealed class ObjectSaveAttempt extends DataEntryAnalyticsEvent {
  final Json entityProperties;
  final bool isCreate;
  final Duration formOpenDuration;

  String get outcomeName;

  @override
  String get objectAction => 'object_save_attempt';

  @override
  Json get properties => {
    ...entityProperties,
    'is_create': isCreate,
    'outcome': outcomeName,
    'form_open_duration_seconds': formOpenDuration.inSeconds,
  };

  ObjectSaveAttempt({
    required ViewableWithID entity,
    required this.isCreate,
    required this.formOpenDuration,
  }) : entityProperties = AnalyticsEntityType.propertiesOf(entity);
}

final class PersonSaveAttempt extends ObjectSaveAttempt {
  final PersonSaveOutcome outcome;
  final Set<PersonRuleViolation> shownRuleViolations;

  @override
  String get outcomeName => switch (outcome) {
    PersonSaved() => 'saved',
    PersonSavedButPhotoFailed() => 'savedButPhotoFailed',
    PersonSaveFailed() => 'failed',
    InvalidPerson() => 'invalid',
    MoveOutOfSightDeclined() => 'moveOutOfSightDeclined',
    MembershipsNotLoadedYet() => 'membershipsNotLoadedYet',
    MembershipsFailedToLoad() => 'membershipsFailedToLoad',
    SaveAbandonedBecauseFormWasDisposed() => 'abandoned',
    SaveAlreadyInProgress() => 'alreadyInProgress',
  };

  @override
  Json get properties => {
    ...super.properties,
    'rule_violations': [
      for (final violation in shownRuleViolations)
        switch (violation) {
          NothingPlacesThePerson() => 'nothingPlacesThePerson',
          AddressChangeBlockedByMove() => 'addressChangeBlockedByMove',
          ServicesOutsideStudyYear() => 'servicesOutsideStudyYear',
          NoServiceOrGroupToKeepPersonEditable() =>
            'noServiceOrGroupToKeepPersonEditable',
        },
    ],
  };

  PersonSaveAttempt({
    required this.outcome,
    required this.shownRuleViolations,
    required super.entity,
    required super.isCreate,
    required super.formOpenDuration,
  });
}

final class PlainObjectSaveAttempt extends ObjectSaveAttempt {
  final ObjectSaveOutcome<Object?> outcome;

  @override
  String get outcomeName => switch (outcome) {
    ObjectSaved() => 'saved',
    ObjectSavedButPhotoFailed() => 'savedButPhotoFailed',
    ObjectSaveFailed() => 'failed',
    InvalidObject() => 'invalid',
    ObjectMoveOutOfSightDeclined() => 'moveOutOfSightDeclined',
    ObjectSaveAbandonedBecauseEditorClosed() => 'abandoned',
    ObjectSaveAlreadyInProgress() => 'alreadyInProgress',
  };

  PlainObjectSaveAttempt({
    required this.outcome,
    required super.entity,
    required super.isCreate,
    required super.formOpenDuration,
  });
}

final class DefaultMeetingObjectSaveAttempt extends PlainObjectSaveAttempt {
  final bool isDefaultMeetingCreated;

  @override
  Json get properties => {
    ...super.properties,
    'is_default_meeting_created': isDefaultMeetingCreated,
  };

  DefaultMeetingObjectSaveAttempt({
    required this.isDefaultMeetingCreated,
    required super.entity,
    required super.isCreate,
    required super.formOpenDuration,
    required super.outcome,
  });
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
