import 'dart:convert';
import 'dart:isolate';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Future<MeetingsAnalysisExtra> decodeAfterAppRestart(
    MeetingsAnalysisExtra extra,
  ) {
    final wire = jsonDecode(
      jsonEncode(ChurchAdminRouterExtraCodec().encode(extra)),
    ) as List;

    return Isolate.run(() {
      return switch (ChurchAdminRouterExtraCodec().decode(wire)) {
        final MeetingsAnalysisExtra extra => extra,
        final other => throw StateError('Decoded $other'),
      };
    });
  }

  MeetingsAnalysisExtra extraOf(
    MeetingsAnalysisSubject subject, {
    DateTimeRangePreset? preset,
  }) => MeetingsAnalysisExtra(
    title: 'Analysis of ${subject.title}',
    initialRangePreset: preset ?? PastMonthDateTimeRangePreset(),
    subject: subject,
  );

  const service = Service(id: 'service-1', name: 'Primary');
  const meeting = Meeting(
    id: 'meeting-1',
    name: 'Meeting',
    audience: MeetingAudience.personsAndServants,
    isArchived: false,
  );
  final class$ = Class(
    id: 'class-1',
    name: 'Class',
    service: service,
    studyYear: StudyYear(order: 3, name: 'Third Primary'),
  );
  const sampleGroup = Group(id: 'group-1', name: 'Group', service: service);

  group('MeetingsAnalysisExtra router extra after an app restart', () {
    test('a group subject and named range preset survive', () async {
      final extra = extraOf(
        const GroupAnalysisSubject(sampleGroup),
        preset: PastMonthDateTimeRangePreset(),
      );

      final restored = await decodeAfterAppRestart(extra);

      expect(restored.title, extra.title);
      expect(restored.initialRangePreset, isA<PastMonthDateTimeRangePreset>());
      expect((restored.subject as GroupAnalysisSubject).group, sampleGroup);
    });

    test('a meeting subject survives', () async {
      final extra = extraOf(const MeetingAnalysisSubject(meeting));

      final restored = await decodeAfterAppRestart(extra);

      expect((restored.subject as MeetingAnalysisSubject).meeting, meeting);
    });

    test('a service subject survives', () async {
      final extra = extraOf(const ServiceAnalysisSubject(service));

      final restored = await decodeAfterAppRestart(extra);

      expect((restored.subject as ServiceAnalysisSubject).service, service);
    });

    test('a class subject survives', () async {
      final extra = extraOf(ClassAnalysisSubject(class$));

      final restored = await decodeAfterAppRestart(extra);

      expect((restored.subject as ClassAnalysisSubject).class$, class$);
    });

    test('a custom range preset survives', () async {
      final extra = extraOf(
        const GroupAnalysisSubject(sampleGroup),
        preset: CustomDateTimeRangePreset(
          range: DateTimeRange(
            start: DateTime(2026, 3, 2),
            end: DateTime(2026, 3, 31),
          ),
        ),
      );

      final restored = await decodeAfterAppRestart(extra);

      expect(restored.initialRangePreset, extra.initialRangePreset);
    });
  });
}
