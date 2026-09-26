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

  late StreamController<AuthUser?> userChangesController;
  late UserDataWiper unit;

  setUp(() {
    userChangesController = StreamController<AuthUser?>.broadcast();
    unit = UserDataWiper(userChangesStream: userChangesController.stream);
  });

  tearDown(() async {
    await unit.dispose();
    await userChangesController.close();
  });

  test(
    'signing out runs the registered clears in reverse registration order',
    () async {
      final callOrder = <String>[];
      unit
        ..register(() async => callOrder.add('first'))
        ..register(() async => callOrder.add('second'))
        ..register(() async => callOrder.add('third'));

      userChangesController
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

    userChangesController
      ..add(signedInUser)
      ..add(null);
    await pumpEventQueue();

    expect(callOrder, ['third', 'first']);
  });

  test('nothing runs while the user stays signed in', () async {
    var wasCalled = false;
    unit.register(() async => wasCalled = true);

    userChangesController.add(signedInUser);
    await pumpEventQueue();

    expect(wasCalled, isFalse);
  });

  test('starting signed out does not wipe local data', () async {
    var wasCalled = false;
    unit.register(() async => wasCalled = true);

    userChangesController.add(null);
    await pumpEventQueue();

    expect(wasCalled, isFalse);
  });
}
