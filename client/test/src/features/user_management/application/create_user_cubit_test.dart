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

    const draftPermissions = PermissionsSet.fromSet({
      UserPermission.approved,
      UserPermission.exportAllData,
    });

    CreateUserCubit buildCubit({UserDraft? initial}) => CreateUserCubit(
      initial: initial ?? validDraft,
      functions: functions,
      analyticsService: AnalyticsService([analytics], FakeLoggingService()),
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
      build: buildCubit,
      act: (cubit) => cubit.save(),
      verify: (_) => expect(
        analytics.trackedEventsOf<UserCreate>().single,
        isA<UserCreate>()
            .having(
              (event) => event.outcome,
              'outcome',
              isA<AttemptFailed>().having(
                (outcome) => outcome.kind,
                'kind',
                'name_taken',
              ),
            )
            .having(
              (event) => event.personLink,
              'personLink',
              validDraft.person,
            ),
      ),
    );

    blocTest<CreateUserCubit, UserFormState>(
      'a permission dropped for its missing prerequisite is not counted as granted',
      setUp: () => when(
        () => functions.createUser(any()),
      ).thenAnswer((_) async => 'new-uid'),
      build: () => buildCubit(
        initial: validDraft.copyWith(permissions: draftPermissions),
      ),
      act: (cubit) => cubit.save(),
      verify: (_) => expect(
        analytics.trackedEventsOf<UserCreate>().single.permissionCount,
        draftPermissions.validated().length,
      ),
    );

    blocTest<CreateUserCubit, UserFormState>(
      'saving an incomplete form reports a validation error and stays editable',
      build: () => buildCubit(initial: const UserDraft.empty()),
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
      build: buildCubit,
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
      build: buildCubit,
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
      build: buildCubit,
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
      build: () => buildCubit(initial: const UserDraft.empty()),
      act: (cubit) => cubit.selectPerson(
        LinkExistingPerson(Person(id: 'p2', name: 'كيرلس')),
      ),
      expect: () => [
        isA<UserFormEditing>().having((s) => s.draft.name, 'name', 'كيرلس'),
      ],
    );

    blocTest<CreateUserCubit, UserFormState>(
      'when creating a new person the user name names the person too',
      build: () => buildCubit(
        initial: const UserDraft.empty().copyWith(
          person: const CreateNewPerson(name: '', gender: Gender.male),
        ),
      ),
      act: (cubit) => cubit.setName('يوسف'),
      expect: () => [
        isA<UserFormEditing>()
            .having((s) => s.draft.name, 'name', 'يوسف')
            .having(
              (s) => s.draft.person,
              'person',
              const CreateNewPerson(name: 'يوسف', gender: Gender.male),
            ),
      ],
    );
  });
}
