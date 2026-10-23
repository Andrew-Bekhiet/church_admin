import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/recording_analytics_provider.dart';

class _MockFunctionsService extends Mock implements FunctionsService {}

void main() {
  group('CreateUserCubit', () {
    late _MockFunctionsService functions;
    late RecordingAnalyticsProvider analytics;

    final validDraft = UserDraft(
      name: 'مينا',
      email: '',
      person: LinkExistingPerson(
        Person(id: 'p1', name: 'مينا'),
      ),
      permissions: const PermissionsSet.empty(),
      adminOn: const [],
      invitation: const NoInvitation(),
    );

    setUpAll(() {
      registerFallbackValue(
        CreateUserRequest.fromDraft(const UserDraft.empty()),
      );
    });

    setUp(() {
      functions = _MockFunctionsService();
      analytics = RecordingAnalyticsProvider();
    });

    blocTest<CreateUserCubit, UserFormState>(
      'a name already taken on the server is tracked as the failure kind',
      setUp: () => when(() => functions.createUser(any())).thenThrow(
        FirebaseFunctionsException(
          code: 'already-exists',
          message: 'user/name-taken',
        ),
      ),
      build: () => CreateUserCubit(
        initial: validDraft,
        functions: functions,
        analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      ),
      act: (cubit) => cubit.save(),
      verify: (_) => expect(analytics.trackedEvents.single.properties, {
        'is_success': false,
        'failure_kind': 'name_taken',
        'permission_count': 0,
        'area_count': 0,
        'service_count': 0,
        'group_count': 0,
        'has_invitation': false,
        'person_link_mode': PersonLinkMode.link.name,
      }),
    );

    blocTest<CreateUserCubit, UserFormState>(
      'saving an incomplete form reports a validation error and stays editable',
      build: () => CreateUserCubit(
        initial: const UserDraft.empty(),
        functions: functions,
      ),
      act: (cubit) => cubit.save(),
      expect: () => [
        isA<UserFormEditing>().having(
          (s) => s.error,
          'error',
          isA<UserFormValidationError>(),
        ),
      ],
    );

    blocTest<CreateUserCubit, UserFormState>(
      'saving a complete form creates the user and reports the new uid',
      setUp: () => when(
        () => functions.createUser(any()),
      ).thenAnswer((_) async => 'new-uid'),
      build: () => CreateUserCubit(initial: validDraft, functions: functions),
      act: (cubit) => cubit.save(),
      expect: () => [
        isA<UserFormSaving>(),
        isA<UserFormSaved>().having((s) => s.uid, 'uid', 'new-uid'),
      ],
    );

    blocTest<CreateUserCubit, UserFormState>(
      'a failed creation surfaces the error and returns to editing',
      setUp: () => when(
        () => functions.createUser(any()),
      ).thenThrow(Exception('boom')),
      build: () => CreateUserCubit(initial: validDraft, functions: functions),
      act: (cubit) => cubit.save(),
      expect: () => [
        isA<UserFormSaving>(),
        isA<UserFormEditing>().having(
          (s) => s.error,
          'error',
          isA<Exception>(),
        ),
      ],
    );

    blocTest<CreateUserCubit, UserFormState>(
      'the email is stored trimmed and lowercased',
      build: () => CreateUserCubit(initial: validDraft, functions: functions),
      act: (cubit) => cubit.setEmail('  Mina@Example.COM  '),
      expect: () => [
        isA<UserFormEditing>().having(
          (s) => s.draft.email,
          'email',
          'mina@example.com',
        ),
      ],
    );

    blocTest<CreateUserCubit, UserFormState>(
      'selecting an existing person gives the user that person name',
      build: () => CreateUserCubit(
        initial: const UserDraft.empty(),
        functions: functions,
      ),
      act: (cubit) => cubit.selectPerson(
        LinkExistingPerson(Person(id: 'p2', name: 'كيرلس')),
      ),
      expect: () => [
        isA<UserFormEditing>().having((s) => s.draft.name, 'name', 'كيرلس'),
      ],
    );

    blocTest<CreateUserCubit, UserFormState>(
      'when creating a new person the user name names the person too',
      build: () => CreateUserCubit(
        initial: const UserDraft.empty().copyWith(
          person: const CreateNewPerson(name: '', gender: true),
        ),
        functions: functions,
      ),
      act: (cubit) => cubit.setName('يوسف'),
      expect: () => [
        isA<UserFormEditing>()
            .having((s) => s.draft.name, 'name', 'يوسف')
            .having(
              (s) => s.draft.person,
              'person',
              const CreateNewPerson(name: 'يوسف', gender: true),
            ),
      ],
    );
  });
}
