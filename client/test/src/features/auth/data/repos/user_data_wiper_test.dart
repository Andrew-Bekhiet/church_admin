import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const signedInUser = AuthUser(
    uid: 'uid',
    email: 'email',
    emailVerified: true,
    idToken: 'idToken',
  );

  late StreamController<AuthUser?> signedOutController;
  late UserDataWiper unit;

  setUp(() {
    signedOutController = StreamController<AuthUser?>.broadcast();
    unit = UserDataWiper(signedOutSignal: signedOutController.stream);
  });

  tearDown(() async {
    await unit.dispose();
    await signedOutController.close();
  });

  test(
    'signing out runs the registered clears in reverse registration order',
    () async {
      final callOrder = <String>[];
      unit
        ..register(() async => callOrder.add('first'))
        ..register(() async => callOrder.add('second'))
        ..register(() async => callOrder.add('third'));

      signedOutController
        ..add(signedInUser)
        ..add(null);
      await pumpEventQueue();

      expect(callOrder, ['third', 'second', 'first']);
    },
  );

  test('a failing clear does not stop the others from running', () async {
    final callOrder = <String>[];
    unit
      ..register(() async => callOrder.add('first'))
      ..register(() async => throw Exception('boom'))
      ..register(() async => callOrder.add('third'));

    signedOutController
      ..add(signedInUser)
      ..add(null);
    await pumpEventQueue();

    expect(callOrder, ['third', 'first']);
  });

  test('nothing runs while the user stays signed in', () async {
    var wasCalled = false;
    unit.register(() async => wasCalled = true);

    signedOutController.add(signedInUser);
    await pumpEventQueue();

    expect(wasCalled, isFalse);
  });

  test('starting signed out does not wipe local data', () async {
    var wasCalled = false;
    unit.register(() async => wasCalled = true);

    signedOutController.add(null);
    await pumpEventQueue();

    expect(wasCalled, isFalse);
  });
}
