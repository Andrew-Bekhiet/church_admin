import 'package:church_admin/church_admin.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../utils.dart';
import 'functions_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<FirebaseFunctions>(),
  MockSpec<HttpsCallable>(),
  MockSpec<Dio>(),
])
void main() {
  group('FunctionsService => tryClaimInvitation =>', () {
    tearDown(defaultTearDown);

    test(
      'tryClaimInvitation_whenTheCallableSucceeds_reportsTheClaim',
      () async {
        final unit = _createFunctionsService(_callableSucceeding());

        await expectLater(unit.tryClaimInvitation(), completion(isTrue));
      },
    );

    test(
      'tryClaimInvitation_whenTheEmailIsUnverified_reportsNoClaim',
      () async {
        final unit = _createFunctionsService(
          _callableThrowing('unauthenticated'),
        );

        await expectLater(unit.tryClaimInvitation(), completion(isFalse));
      },
    );

    test(
      'tryClaimInvitation_whenThereIsNoInvitation_reportsNoClaim',
      () async {
        final unit = _createFunctionsService(_callableThrowing('not-found'));

        await expectLater(unit.tryClaimInvitation(), completion(isFalse));
      },
    );

    test('tryClaimInvitation_whenTheClaimIsRefused_rethrows', () async {
      final unit = _createFunctionsService(_callableThrowing('already-exists'));

      await expectLater(
        unit.tryClaimInvitation(),
        throwsA(isA<FirebaseFunctionsException>()),
      );
    });
  });
}

MockHttpsCallable _callableSucceeding() => MockHttpsCallable();

MockHttpsCallable _callableThrowing(String code) {
  final callable = MockHttpsCallable();

  when(callable.call<void>()).thenThrow(
    FirebaseFunctionsException(code: code, message: code),
  );

  return callable;
}

FunctionsService _createFunctionsService(MockHttpsCallable callable) {
  final functions = MockFirebaseFunctions();

  when(
    functions.httpsCallable('tryClaimInvitation', options: anyNamed('options')),
  ).thenReturn(callable);

  initGlobalProviderContainer([
    firebaseFunctionsProvider.overrideWithValue(functions),
  ]);

  return FunctionsService(dio: MockDio());
}
