import 'package:church_admin/church_admin.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../utils.dart';

class MockFirebaseFunctions extends Mock implements FirebaseFunctions {}

class MockHttpsCallable extends Mock implements HttpsCallable {}

void main() {
  late MockHttpsCallable tryClaimAccountCallable;
  late FunctionsService unit;

  setUp(() {
    tryClaimAccountCallable = MockHttpsCallable();
    final functions = MockFirebaseFunctions();
    when(
      () => functions.httpsCallable('tryClaimAccount'),
    ).thenReturn(tryClaimAccountCallable);

    initGlobalProviderContainer([
      firebaseFunctionsProvider.overrideWithValue(functions),
    ]);
    unit = FunctionsService(dio: Dio());
  });

  tearDown(defaultTearDown);

  group('tryClaimAccount', () {
    test('a claim the server accepts reports the account as claimed', () async {
      when(
        () => tryClaimAccountCallable.call<void>(),
      ).thenAnswer((_) async => MockHttpsCallableResult());

      expect(await unit.tryClaimAccount(), isTrue);
    });

    for (final code in ['unauthenticated', 'not-found', 'aborted']) {
      test('a claim answered with $code reports nothing to claim', () async {
        when(
          () => tryClaimAccountCallable.call<void>(),
        ).thenThrow(FirebaseFunctionsException(code: code, message: code));

        expect(await unit.tryClaimAccount(), isFalse);
      });
    }

    test('a claim failing for any other reason is rethrown', () async {
      when(() => tryClaimAccountCallable.call<void>()).thenThrow(
        FirebaseFunctionsException(code: 'unavailable', message: 'offline'),
      );

      await expectLater(
        unit.tryClaimAccount(),
        throwsA(
          isA<FirebaseFunctionsException>().having(
            (e) => e.code,
            'code',
            'unavailable',
          ),
        ),
      );
    });
  });
}

class MockHttpsCallableResult extends Mock
    implements HttpsCallableResult<void> {}
