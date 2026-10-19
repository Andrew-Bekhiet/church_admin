import 'package:church_admin/src/features/attendance/domain/models/meeting.dart';
import 'package:church_admin/src/features/attendance/domain/models/meeting_audience.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

Meeting _meeting({
  String id = 'm1',
  String name = 'Test Meeting',
  MeetingAudience audience = MeetingAudience.onlyPersons,
  bool isArchived = false,
  bool showKodasCheckbox = true,
  Color? color,
  String? serviceId,
  int? serviceStudyYear,
  bool? serviceGender,
  String? groupId,
}) => Meeting(
  id: id,
  name: name,
  audience: audience,
  isArchived: isArchived,
  showKodasCheckbox: showKodasCheckbox,
  color: color,
  serviceId: serviceId,
  serviceStudyYear: serviceStudyYear,
  serviceGender: serviceGender,
  groupId: groupId,
);

void main() {
  group('MeetingAudience', () {
    const wireValues = {
      MeetingAudience.onlyPersons: 'ONLY_PERSONS',
      MeetingAudience.onlyServants: 'ONLY_SERVANTS',
      MeetingAudience.personsAndServants: 'PERSONS_AND_SERVANTS',
    };

    test('audience round-trips through the upper-case GraphQL enum', () {
      for (final aud in MeetingAudience.values) {
        final json = _meeting(audience: aud).toJson();
        expect(json['audience'], wireValues[aud]);
        expect(Meeting.fromJson(json).audience, aud);
      }
    });

    test('Meeting.fromJson rejects unknown audience value', () {
      final json = {
        'id': 'm1',
        'name': 'test',
        'audience': 'unknownAudience',
        'isArchived': false,
      };
      expect(() => Meeting.fromJson(json), throwsA(anything));
    });

    test('includesPersons is true for onlyPersons and personsAndServants', () {
      expect(MeetingAudience.onlyPersons.includesPersons, isTrue);
      expect(MeetingAudience.personsAndServants.includesPersons, isTrue);
      expect(MeetingAudience.onlyServants.includesPersons, isFalse);
    });

    test(
      'includesServants is true for onlyServants and personsAndServants',
      () {
        expect(MeetingAudience.onlyServants.includesServants, isTrue);
        expect(MeetingAudience.personsAndServants.includesServants, isTrue);
        expect(MeetingAudience.onlyPersons.includesServants, isFalse);
      },
    );
  });

  group('Meeting.fromJson', () {
    test('parses minimal meeting JSON', () {
      final json = {
        'id': 'meet-1',
        'name': 'Sunday Meeting',
        'audience': 'ONLY_PERSONS',
        'isArchived': false,
      };
      final meeting = Meeting.fromJson(json);
      expect(meeting.id, 'meet-1');
      expect(meeting.name, 'Sunday Meeting');
      expect(meeting.audience, MeetingAudience.onlyPersons);
      expect(meeting.isArchived, isFalse);
      expect(meeting.color, isNull);
    });

    test('a meeting without the kodas flag shows the kodas checkbox', () {
      final json = {
        'id': 'meet-1',
        'name': 'Sunday Meeting',
        'audience': 'ONLY_PERSONS',
        'isArchived': false,
      };

      final meeting = Meeting.fromJson(json);

      expect(meeting.showKodasCheckbox, isTrue);
    });

    test('parses the kodas flag', () {
      final json = {
        'id': 'meet-1',
        'name': 'Liturgy',
        'audience': 'ONLY_PERSONS',
        'isArchived': false,
        'showKodasCheckbox': false,
      };

      final meeting = Meeting.fromJson(json);

      expect(meeting.showKodasCheckbox, isFalse);
    });

    test('parses color from int', () {
      final json = {
        'id': 'meet-1',
        'name': 'Coloured Meeting',
        'audience': 'ONLY_PERSONS',
        'isArchived': false,
        'color': 0xFF2196F3,
      };
      final meeting = Meeting.fromJson(json);
      expect(meeting.color, isNotNull);
    });

    test('parses full meeting JSON with optional fields', () {
      final json = {
        'id': 'meet-2',
        'name': 'Servants Meeting',
        'audience': 'ONLY_SERVANTS',
        'isArchived': true,
        'serviceId': 'svc-uuid',
        'serviceStudyYear': 3,
        'serviceGender': true,
        'groupId': null,
      };
      final meeting = Meeting.fromJson(json);
      expect(meeting.isArchived, isTrue);
      expect(meeting.audience, MeetingAudience.onlyServants);
      expect(meeting.serviceId, 'svc-uuid');
      expect(meeting.serviceStudyYear, 3);
      expect(meeting.serviceGender, isTrue);
      expect(meeting.groupId, isNull);
    });
  });

  group('Meeting.toInsertInput', () {
    test('builds insert input with all fields', () {
      final meeting = _meeting(
        name: 'New Meeting',
        audience: MeetingAudience.personsAndServants,
        color: const Color(0xFF2196F3),
        serviceId: 'svc-abc',
        serviceStudyYear: 2,
        serviceGender: false,
      );
      final input = meeting.toInsertInput();
      expect(input.name, 'New Meeting');
      expect(input.audience, 'personsAndServants');
      expect(input.isArchived, isFalse);
      expect(input.color, isNotNull);
      expect(input.serviceStudyYear, 2);
      expect(input.serviceGender, isFalse);
    });

    test('builds insert input for group meeting', () {
      final meeting = _meeting(
        name: 'Group Meeting',
        groupId: 'grp-abc',
      );
      final input = meeting.toInsertInput();
      expect(input.groupId, isNotNull);
      expect(input.serviceId, isNull);
      expect(input.color, isNull);
    });

    test('audience serialises as enum name string', () {
      for (final aud in MeetingAudience.values) {
        final input = _meeting(audience: aud).toInsertInput();
        expect(input.audience, aud.name);
      }
    });
  });
}
