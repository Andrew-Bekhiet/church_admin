import 'package:church_admin/src/features/attendance/domain/models/meeting.dart';
import 'package:church_admin/src/features/attendance/domain/models/meeting_audience.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Meeting _meeting({
  String id = 'm1',
  String name = 'Test Meeting',
  MeetingAudience audience = MeetingAudience.onlyPersons,
  bool archived = false,
  Color? color,
  String? serviceId,
  int? serviceStudyYear,
  bool? serviceGender,
  String? groupId,
}) => Meeting(
  id: id,
  name: name,
  audience: audience,
  archived: archived,
  color: color,
  serviceId: serviceId,
  serviceStudyYear: serviceStudyYear,
  serviceGender: serviceGender,
  groupId: groupId,
);

void main() {
  group('MeetingAudience', () {
    test('enum names match expected JSON string values', () {
      expect(MeetingAudience.onlyPersons.name, 'onlyPersons');
      expect(MeetingAudience.onlyServants.name, 'onlyServants');
      expect(MeetingAudience.personsAndServants.name, 'personsAndServants');
    });

    test('audience round-trips through Meeting.fromJson / toJson', () {
      for (final aud in MeetingAudience.values) {
        final json = _meeting(audience: aud).toJson();
        expect(json['audience'], aud.name);
        expect(Meeting.fromJson(json).audience, aud);
      }
    });

    test('Meeting.fromJson rejects unknown audience value', () {
      final json = {
        'id': 'm1',
        'name': 'test',
        'audience': 'unknownAudience',
        'archived': false,
      };
      expect(() => Meeting.fromJson(json), throwsA(anything));
    });

    test('includesPersons is true for onlyPersons and personsAndServants', () {
      expect(MeetingAudience.onlyPersons.includesPersons, isTrue);
      expect(MeetingAudience.personsAndServants.includesPersons, isTrue);
      expect(MeetingAudience.onlyServants.includesPersons, isFalse);
    });

    test('includesServants is true for onlyServants and personsAndServants', () {
      expect(MeetingAudience.onlyServants.includesServants, isTrue);
      expect(MeetingAudience.personsAndServants.includesServants, isTrue);
      expect(MeetingAudience.onlyPersons.includesServants, isFalse);
    });
  });

  group('Meeting.fromJson', () {
    test('parses minimal meeting JSON', () {
      final json = {
        'id': 'meet-1',
        'name': 'Sunday Meeting',
        'audience': 'onlyPersons',
        'archived': false,
      };
      final meeting = Meeting.fromJson(json);
      expect(meeting.id, 'meet-1');
      expect(meeting.name, 'Sunday Meeting');
      expect(meeting.audience, MeetingAudience.onlyPersons);
      expect(meeting.archived, isFalse);
      expect(meeting.color, isNull);
    });

    test('parses color from int', () {
      final json = {
        'id': 'meet-1',
        'name': 'Coloured Meeting',
        'audience': 'onlyPersons',
        'archived': false,
        'color': 0xFF2196F3,
      };
      final meeting = Meeting.fromJson(json);
      expect(meeting.color, isNotNull);
    });

    test('parses full meeting JSON with optional fields', () {
      final json = {
        'id': 'meet-2',
        'name': 'Servants Meeting',
        'audience': 'onlyServants',
        'archived': true,
        'serviceId': 'svc-uuid',
        'serviceStudyYear': 3,
        'serviceGender': true,
        'groupId': null,
      };
      final meeting = Meeting.fromJson(json);
      expect(meeting.archived, isTrue);
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
      expect(input.archived, isFalse);
      expect(input.color, isNotNull);
      expect(input.serviceStudyYear, 2);
      expect(input.serviceGender, isFalse);
    });

    test('builds insert input for group meeting', () {
      final meeting = _meeting(
        name: 'Group Meeting',
        audience: MeetingAudience.onlyPersons,
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

  group('Meeting.toUpdateInput', () {
    final original = _meeting(name: 'Old Name', audience: MeetingAudience.onlyPersons);

    test('includes changed name', () {
      final updated = _meeting(name: 'New Name');
      final input = updated.toUpdateInput(oldMeeting: original);
      expect(input.name, 'New Name');
    });

    test('includes changed audience', () {
      final updated = _meeting(audience: MeetingAudience.personsAndServants);
      final input = updated.toUpdateInput(oldMeeting: original);
      expect(input.audience, 'personsAndServants');
    });

    test('includes changed color', () {
      final withColor = _meeting(color: const Color(0xFF2196F3));
      final input = withColor.toUpdateInput(oldMeeting: original);
      expect(input.color, isNotNull);
    });

    test('includes archived flag when changed', () {
      final updated = _meeting(archived: true);
      final input = updated.toUpdateInput(oldMeeting: original);
      expect(input.archived, isTrue);
    });

    test('returns empty input when nothing changed', () {
      final input = original.toUpdateInput(oldMeeting: original);
      expect(input.name, isNull);
      expect(input.audience, isNull);
      expect(input.archived, isNull);
      expect(input.color, isNull);
    });
  });
}
