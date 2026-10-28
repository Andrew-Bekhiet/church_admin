import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final person = Person(id: 'person-1', name: 'مينا');
  const service = Service(id: 'service-1', name: 'خدمة');
  final failure = StateError('offline');
  const stackTrace = StackTrace.empty;

  const formOpenDuration = Duration(seconds: 12, milliseconds: 345);
  final contracts = <({AnalyticsEvent event, String name, Json properties})>[
    (
      event: PersonSaveAttempt(
        entity: person,
        isCreate: true,
        outcome: PersonSaved(person: person, movedOutOfSight: false),
        formOpenDuration: formOpenDuration,
        shownRuleViolations: const {},
      ),
      name: 'data_entry:object_save_attempt',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'is_create': true,
        'outcome': 'saved',
        'form_open_duration_seconds': formOpenDuration.inSeconds,
        'rule_violations': <String>[],
      },
    ),
    (
      event: PersonSaveAttempt(
        entity: person,
        isCreate: false,
        outcome: const InvalidPerson(),
        formOpenDuration: formOpenDuration,
        shownRuleViolations: const {
          NothingPlacesThePerson(),
          AddressChangeBlockedByMove(),
          ServicesOutsideStudyYear(),
          NoServiceOrGroupToKeepPersonEditable(),
        },
      ),
      name: 'data_entry:object_save_attempt',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'is_create': false,
        'outcome': 'invalid',
        'form_open_duration_seconds': formOpenDuration.inSeconds,
        'rule_violations': [
          'nothingPlacesThePerson',
          'addressChangeBlockedByMove',
          'servicesOutsideStudyYear',
          'noServiceOrGroupToKeepPersonEditable',
        ],
      },
    ),
    (
      event: DefaultMeetingObjectSaveAttempt(
        entity: service,
        isCreate: true,
        outcome: ObjectSavedButPhotoFailed(
          object: service,
          movedOutOfSight: false,
          error: failure,
          stackTrace: stackTrace,
        ),
        formOpenDuration: Duration.zero,
        isDefaultMeetingCreated: true,
      ),
      name: 'data_entry:object_save_attempt',
      properties: {
        'entity_type': 'service',
        'service_id': service.id,
        'is_create': true,
        'outcome': 'savedButPhotoFailed',
        'form_open_duration_seconds': Duration.zero.inSeconds,
        'is_default_meeting_created': true,
      },
    ),
    (
      event: ObjectDelete(person, isSuccess: false),
      name: 'data_entry:object_delete',
      properties: {
        'entity_type': 'person',
        'person_id': person.id,
        'is_success': false,
      },
    ),
  ];

  for (final (:event, :name, :properties) in contracts) {
    test('$name sends $properties', () {
      expect(event.name, name);
      expect(event.properties, properties);
    });
  }

  final personOutcomes = <({PersonSaveOutcome outcome, String sent})>[
    (
      outcome: PersonSaved(person: person, movedOutOfSight: false),
      sent: 'saved',
    ),
    (
      outcome: PersonSavedButPhotoFailed(
        person: person,
        movedOutOfSight: true,
        error: failure,
        stackTrace: stackTrace,
      ),
      sent: 'savedButPhotoFailed',
    ),
    (
      outcome: PersonSaveFailed(
        error: failure,
        stackTrace: stackTrace,
        attemptedPerson: person,
      ),
      sent: 'failed',
    ),
    (outcome: const InvalidPerson(), sent: 'invalid'),
    (outcome: const MoveOutOfSightDeclined(), sent: 'moveOutOfSightDeclined'),
    (outcome: const MembershipsNotLoadedYet(), sent: 'membershipsNotLoadedYet'),
    (outcome: const MembershipsFailedToLoad(), sent: 'membershipsFailedToLoad'),
    (outcome: const SaveAbandonedBecauseFormWasDisposed(), sent: 'abandoned'),
    (outcome: const SaveAlreadyInProgress(), sent: 'alreadyInProgress'),
  ];

  for (final (:outcome, :sent) in personOutcomes) {
    test('a person save ending in ${outcome.runtimeType} sends $sent', () {
      final attempt = PersonSaveAttempt(
        entity: person,
        isCreate: true,
        outcome: outcome,
        formOpenDuration: Duration.zero,
        shownRuleViolations: const {},
      );

      expect(attempt.properties, containsPair('outcome', sent));
    });
  }

  final objectOutcomes = <({ObjectSaveOutcome<Service> outcome, String sent})>[
    (
      outcome: const ObjectSaved(object: service, movedOutOfSight: false),
      sent: 'saved',
    ),
    (
      outcome: ObjectSavedButPhotoFailed(
        object: service,
        movedOutOfSight: false,
        error: failure,
        stackTrace: stackTrace,
      ),
      sent: 'savedButPhotoFailed',
    ),
    (
      outcome: ObjectSaveFailed(
        error: failure,
        stackTrace: stackTrace,
        attemptedObject: service,
      ),
      sent: 'failed',
    ),
    (outcome: const InvalidObject(), sent: 'invalid'),
    (
      outcome: const ObjectMoveOutOfSightDeclined(),
      sent: 'moveOutOfSightDeclined',
    ),
    (
      outcome: const ObjectSaveAbandonedBecauseEditorClosed(),
      sent: 'abandoned',
    ),
    (outcome: const ObjectSaveAlreadyInProgress(), sent: 'alreadyInProgress'),
  ];

  for (final (:outcome, :sent) in objectOutcomes) {
    test('an object save ending in ${outcome.runtimeType} sends $sent', () {
      final attempt = PlainObjectSaveAttempt(
        entity: service,
        isCreate: true,
        outcome: outcome,
        formOpenDuration: Duration.zero,
      );

      expect(attempt.properties, containsPair('outcome', sent));
    });
  }
}
