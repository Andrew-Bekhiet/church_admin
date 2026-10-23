import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/fake_meetings_dao.dart';
import '../../../../fakes/fake_photo_uploader.dart';
import '../../../../fakes/fake_services_dao.dart';
import '../../../../fakes/recording_analytics_provider.dart';

void main() {
  late FakeServicesDAO services;
  late FakeMeetingsDAO meetings;
  late ServiceFormController form;
  late ObjectSaveOutcome<Service> outcome;
  late RecordingAnalyticsProvider analytics;

  DefaultMeetingSaveCubit<Service> cubitEditing(ServiceEditIntent intent) {
    form = ServiceFormController(
      intent: intent,
      servicesDAO: services,
      currentUserId: 'me',
    );
    addTearDown(form.dispose);

    return DefaultMeetingSaveCubit<Service>(
      meetingOwner: form,
      meetingsDAO: meetings,
      form: form,
      dao: services,
      photoUploader: FakePhotoUploader(),
      analyticsService: AnalyticsService([analytics], FakeLoggingService()),
    );
  }

  setUp(() {
    services = FakeServicesDAO();
    meetings = FakeMeetingsDAO();
    analytics = RecordingAnalyticsProvider();
  });

  blocTest<DefaultMeetingSaveCubit<Service>, ObjectSaveProgress>(
    'a new service gets its default meeting',
    build: () => cubitEditing(const CreateBlankService()),
    act: (cubit) {
      form.name.setValue('خدمة ابتدائي');

      return cubit.submit();
    },
    verify: (_) {
      final meeting = meetings.createdMeetings.single;
      expect(meeting.name, 'اجتماع ابتدائي');
      expect(meeting.serviceId, services.createdObjects.single.id);
      expect(services.updates.single.editedObject.defaultMeeting, meeting);
    },
  );

  blocTest<DefaultMeetingSaveCubit<Service>, ObjectSaveProgress>(
    'a new service whose user opted out gets no meeting',
    build: () => cubitEditing(const CreateBlankService()),
    act: (cubit) {
      form.name.setValue('خدمة ابتدائي');
      form.defaultMeeting?.isCreated.setValue(false);

      return cubit.submit();
    },
    verify: (_) => expect(meetings.createdMeetings, isEmpty),
  );

  blocTest<DefaultMeetingSaveCubit<Service>, ObjectSaveProgress>(
    'an existing service gets no new meeting',
    build: () => cubitEditing(
      const UpdateService(
        service: Service(id: 's', name: 'خدمة ابتدائي'),
      ),
    ),
    act: (cubit) => cubit.submit(),
    verify: (_) => expect(meetings.createdMeetings, isEmpty),
  );

  group('retrying after the meeting failed to save', () {
    blocTest<DefaultMeetingSaveCubit<Service>, ObjectSaveProgress>(
      'does not create the service again',
      build: () => cubitEditing(const CreateBlankService()),
      act: (cubit) async {
        form.name.setValue('خدمة ابتدائي');
        meetings.createError = Exception('offline');
        await cubit.submit();
        meetings.createError = null;
        await cubit.submit();
      },
      verify: (_) {
        expect(services.createdObjects, hasLength(1));
        expect(meetings.createdMeetings, hasLength(1));
      },
    );

    blocTest<DefaultMeetingSaveCubit<Service>, ObjectSaveProgress>(
      'saves the edits made since the failed attempt',
      build: () => cubitEditing(const CreateBlankService()),
      act: (cubit) async {
        form.name.setValue('خدمة ابتدائي');
        meetings.createError = Exception('offline');
        await cubit.submit();
        meetings.createError = null;
        form.name.setValue('خدمة إعدادي');
        await cubit.submit();
      },
      verify: (_) => expect(
        services.updates.single.editedObject.name,
        'خدمة إعدادي',
      ),
    );
  });

  group('retrying after the meeting link failed to save', () {
    Future<void> failLinkThenRetry(
      DefaultMeetingSaveCubit<Service> cubit, {
      String? renamedMeeting,
    }) async {
      form.name.setValue('خدمة ابتدائي');
      services.updatesFindNothing = true;
      await cubit.submit();
      services.updatesFindNothing = false;
      if (renamedMeeting != null) {
        form.defaultMeeting?.name.setValue(renamedMeeting);
      }
      await cubit.submit();
    }

    blocTest<DefaultMeetingSaveCubit<Service>, ObjectSaveProgress>(
      'links the meeting already created',
      build: () => cubitEditing(const CreateBlankService()),
      act: failLinkThenRetry,
      verify: (_) {
        expect(meetings.createdMeetings, hasLength(1));
        expect(meetings.updatedMeetings, isEmpty);
        expect(
          services.updates.last.editedObject.defaultMeeting,
          meetings.createdMeetings.single,
        );
      },
    );

    blocTest<DefaultMeetingSaveCubit<Service>, ObjectSaveProgress>(
      'archives the meeting when the user no longer wants it',
      build: () => cubitEditing(const CreateBlankService()),
      act: (cubit) async {
        form.name.setValue('خدمة ابتدائي');
        services.updatesFindNothing = true;
        await cubit.submit();
        services.updatesFindNothing = false;
        form.defaultMeeting?.isCreated.setValue(false);
        await cubit.submit();
      },
      verify: (_) {
        expect(meetings.updatedMeetings.single.isArchived, isTrue);
        expect(services.updates.last.editedObject.defaultMeeting, isNull);
      },
    );

    blocTest<DefaultMeetingSaveCubit<Service>, ObjectSaveProgress>(
      'saves and links the meeting name changed since the failed attempt',
      build: () => cubitEditing(const CreateBlankService()),
      act: (cubit) => failLinkThenRetry(cubit, renamedMeeting: 'اجتماع جديد'),
      verify: (_) {
        expect(meetings.createdMeetings, hasLength(1));
        expect(meetings.updatedMeetings.single.name, 'اجتماع جديد');
        expect(
          services.updates.last.editedObject.defaultMeeting?.name,
          'اجتماع جديد',
        );
      },
    );
  });

  blocTest<DefaultMeetingSaveCubit<Service>, ObjectSaveProgress>(
    'a meeting link the server did not save is reported as a failure',
    build: () {
      services.updatesFindNothing = true;

      return cubitEditing(const CreateBlankService());
    },
    act: (cubit) async {
      form.name.setValue('خدمة ابتدائي');
      outcome = await cubit.submit();
    },
    verify: (_) => expect(outcome, isA<ObjectSaveFailed<Service>>()),
  );

  group('tracking', () {
    blocTest<DefaultMeetingSaveCubit<Service>, ObjectSaveProgress>(
      'a new service saved with its meeting is tracked as creating it',
      build: () => cubitEditing(const CreateBlankService()),
      act: (cubit) {
        form.name.setValue('خدمة ابتدائي');

        return cubit.submit();
      },
      verify: (_) => expect(
        analytics.singleTrackedPropertiesOf<ObjectSaveAttempt>(),
        containsPair('is_default_meeting_created', true),
      ),
    );

    blocTest<DefaultMeetingSaveCubit<Service>, ObjectSaveProgress>(
      'a new service whose user opted out is tracked as creating no meeting',
      build: () => cubitEditing(const CreateBlankService()),
      act: (cubit) {
        form.name.setValue('خدمة ابتدائي');
        form.defaultMeeting?.isCreated.setValue(false);

        return cubit.submit();
      },
      verify: (_) => expect(
        analytics.singleTrackedPropertiesOf<ObjectSaveAttempt>(),
        containsPair('is_default_meeting_created', false),
      ),
    );
  });
}
