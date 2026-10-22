import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/fake_meetings_dao.dart';
import '../../../../fakes/fake_photo_uploader.dart';
import '../../../../fakes/fake_services_dao.dart';

void main() {
  late FakeServicesDAO services;
  late FakeMeetingsDAO meetings;
  late ServiceFormController form;

  DefaultMeetingSaveCubit<Service> cubitEditing(ServiceEditIntent intent) {
    form = ServiceFormController(
      intent: intent,
      services: services,
      recordedByUserId: 'me',
    );
    addTearDown(form.dispose);

    return DefaultMeetingSaveCubit<Service>(
      meetingOwner: form,
      meetings: meetings,
      form: form,
      dao: services,
      photoUploader: FakePhotoUploader(),
    );
  }

  setUp(() {
    services = FakeServicesDAO();
    meetings = FakeMeetingsDAO();
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
}
