import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockFunctionsService extends Mock implements FunctionsService {}

void main() {
  setUpAll(() {
    registerFallbackValue(CreateUserRequest.fromDraft(const UserDraft.empty()));
  });

  test(
    'save_whenDraftChangesDuringRequest_staysSavingUntilCompletion',
    () async {
      final functions = _MockFunctionsService();
      final response = Completer<String>();
      when(
        () => functions.createUser(any()),
      ).thenAnswer((_) => response.future);
      final cubit = CreateUserCubit(
        initial: UserDraft(
          name: 'مينا',
          email: '',
          person: LinkExistingPerson(Person(id: 'p1', name: 'مينا')),
          permissions: const PermissionsSet.empty(),
          adminOn: const [],
          invitation: const NoInvitation(),
        ),
        functions: functions,
      );
      addTearDown(cubit.close);

      final firstSave = cubit.save();
      expect(cubit.state, isA<UserFormSaving>());

      cubit.setEmail('later@example.com');
      expect(cubit.state, isA<UserFormSaving>());

      final secondSave = cubit.save();
      expect(cubit.state, isA<UserFormSaving>());

      response.complete('new-uid');
      await Future.wait([firstSave, secondSave]);
      expect(
        cubit.state,
        isA<UserFormSaved>().having((state) => state.uid, 'uid', 'new-uid'),
      );
    },
  );
}
