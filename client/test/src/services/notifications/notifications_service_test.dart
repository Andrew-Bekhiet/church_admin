import 'dart:async';
import 'dart:collection';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/notifications/notifications_storage.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'notifications_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<PermissionHandlerPlatform>(
    as: #PermissionHandlerPlatform_,
  ),
  MockSpec<FirebaseMessaging>(),
  MockSpec<NotificationSettings>(),
  MockSpec<FlutterLocalNotificationsPlugin>(),
  MockSpec<AuthService>(),
  MockSpec<UserSettingsService>(),
  MockSpec<CAFunctionsService>(),
  MockSpec<NotificationsStorage>(),
])
void main() {
  setUp(_setUp);
  tearDown(GetIt.I.reset);

  test(
    'Notifications Service => requestNotificationsPermission (true)',
    () async {
      final unit = _createNewUnit();
      addTearDown(unit.dispose);

      await expectLater(
        unit.requestNotificationsPermission(),
        completion(isTrue),
      );

      verifyInOrder([
        PermissionHandlerPlatform.instance
            .requestPermissions([Permission.notification]),
        GetIt.I<FirebaseMessaging>().requestPermission(),
      ]);
    },
  );

  test(
    'Notifications Service => requestNotificationsPermission '
    '(false: denied device notifications)',
    () async {
      final unit = _createNewUnit();
      addTearDown(unit.dispose);

      when(
        (PermissionHandlerPlatform.instance as MockPermissionHandlerPlatform)
            .requestPermissions(any),
      ).thenAnswer(
        (i) async => {i.positionalArguments[0][0]: PermissionStatus.denied},
      );

      await expectLater(
        unit.requestNotificationsPermission(),
        completion(isFalse),
      );

      verify(
        PermissionHandlerPlatform.instance
            .requestPermissions([Permission.notification]),
      );
      verifyNever(GetIt.I<FirebaseMessaging>().requestPermission());
    },
  );

  test(
    'Notifications Service => requestNotificationsPermission '
    '(false: denied FCM notifications)',
    () async {
      final unit = _createNewUnit();
      addTearDown(unit.dispose);

      final notificationSettings = MockNotificationSettings();
      when(notificationSettings.authorizationStatus)
          .thenReturn(AuthorizationStatus.denied);

      when(GetIt.I<FirebaseMessaging>().requestPermission()).thenAnswer(
        (_) async => notificationSettings,
      );

      await expectLater(
        unit.requestNotificationsPermission(),
        completion(isFalse),
      );

      verifyInOrder([
        PermissionHandlerPlatform.instance
            .requestPermissions([Permission.notification]),
        GetIt.I<FirebaseMessaging>().requestPermission(),
      ]);
    },
  );

  test(
    'Notifications Service => show',
    () async {
      final unit = _createNewUnit();
      addTearDown(unit.dispose);

      final notification = Notification(
        id: 'id',
        title: 'title',
        body: 'body',
        senderUID: 'senderUID',
        sentTime: DateTime.now().subtract(const Duration(minutes: 4)),
        additionalData: HashMap(),
        type: NotificationType.local,
      );

      const notificationDetails = NotificationDetails();

      await unit.show(
        notification,
        notificationDetails: notificationDetails,
      );

      verify(
        GetIt.I<FlutterLocalNotificationsPlugin>().show(
          notification.hashCode,
          notification.title,
          notification.body,
          notificationDetails,
          payload: notification.id,
        ),
      );

      await unit.show(
        notification.copyWith(id: 'id2'),
        notificationDetails: notificationDetails,
        id: 1234,
      );

      verify(
        GetIt.I<FlutterLocalNotificationsPlugin>().show(
          1234,
          notification.title,
          notification.body,
          notificationDetails,
          payload: 'id2',
        ),
      );
    },
  );

  test(
    'Notifications Service => pausing/resuming listeners',
    () {
      final unit = _createNewUnit();
      addTearDown(unit.dispose);

      expect(unit.isPaused, isFalse);

      unit.pauseListeners();
      expect(unit.isPaused, isTrue);

      unit.resumeListeners();
      expect(unit.isPaused, isFalse);
    },
  );

  test(
    'Notifications Service => getInitialNotification => Remote',
    () async {
      final unit = _createNewUnit();
      addTearDown(unit.dispose);

      final initialRemoteMessage = RemoteMessage(
        notification: const RemoteNotification(title: 'title', body: 'body'),
        data: {'aa': 'bb', 'senderUID': 'foobar'},
        messageId: 'foo',
        sentTime: DateTime.now(),
      );

      when(GetIt.I<FirebaseMessaging>().getInitialMessage())
          .thenAnswer((_) async => initialRemoteMessage);

      await expectLater(
        unit.getInitialNotification(),
        completion(Notification.fromRemoteMessage(initialRemoteMessage)),
      );

      verify(GetIt.I<FirebaseMessaging>().getInitialMessage());
      verifyNever(
        GetIt.I<FlutterLocalNotificationsPlugin>()
            .getNotificationAppLaunchDetails(),
      );
    },
  );

  test(
    'Notifications Service => getInitialNotification => Local',
    () async {
      final unit = _createNewUnit();
      addTearDown(unit.dispose);

      const notificationId = 'smth';

      final expectedNotification = Notification(
        id: notificationId,
        body: 'body',
        title: 'title',
        sentTime: DateTime.now(),
        senderUID: 'foobar',
      );

      when(
        GetIt.I<FlutterLocalNotificationsPlugin>()
            .getNotificationAppLaunchDetails(),
      ).thenAnswer(
        (_) async => const NotificationAppLaunchDetails(
          true,
          notificationResponse: NotificationResponse(
            notificationResponseType:
                NotificationResponseType.selectedNotification,
            payload: notificationId,
          ),
        ),
      );

      when(GetIt.I<NotificationsStorage>().readNotification(notificationId))
          .thenAnswer((_) async => expectedNotification);

      await expectLater(
        unit.getInitialNotification(),
        completion(expectedNotification),
      );

      verifyInOrder([
        GetIt.I<FirebaseMessaging>().getInitialMessage(),
        GetIt.I<FlutterLocalNotificationsPlugin>()
            .getNotificationAppLaunchDetails(),
        GetIt.I<NotificationsStorage>().readNotification(notificationId),
      ]);
    },
  );

  test(
    'Notifications Service => foregroundNotificationsStream',
    () async {
      final onMessageOpenedAppStream = StreamController<RemoteMessage>();
      final onForegroundMessageStream = StreamController<RemoteMessage>();

      final unit = CANotificationsService(
        onMessageOpenedAppStream: onMessageOpenedAppStream.stream,
        onForegroundMessageStream: onForegroundMessageStream.stream,
      );
      addTearDown(unit.dispose);
      addTearDown(onMessageOpenedAppStream.close);
      addTearDown(onForegroundMessageStream.close);

      final expectedNotifications = [
        Notification(
          id: '1',
          body: 'body',
          title: 'title',
          sentTime: DateTime.now(),
          senderUID: 'foobar',
          additionalData: const {'senderUID': 'foobar'},
        ),
        Notification(
          id: '2',
          body: 'body',
          title: 'title',
          sentTime: DateTime.now(),
          senderUID: 'foobar',
          additionalData: const {'senderUID': 'foobar'},
        ),
        Notification(
          id: '3',
          body: 'body',
          title: 'title',
          sentTime: DateTime.now(),
          senderUID: 'foobar',
          additionalData: const {'senderUID': 'foobar'},
        ),
      ];

      expect(
        unit.foregroundNotificationsStream,
        emitsInOrder(expectedNotifications),
      );

      onForegroundMessageStream.add(
        RemoteMessage(
          messageId: '1',
          sentTime: expectedNotifications[0].sentTime,
          data: {'senderUID': 'foobar'},
          notification: const RemoteNotification(
            body: 'body',
            title: 'title',
          ),
        ),
      );

      await Future.delayed(Duration.zero);

      onMessageOpenedAppStream.add(
        RemoteMessage(
          messageId: '2',
          sentTime: expectedNotifications[1].sentTime,
          data: {'senderUID': 'foobar'},
          notification: const RemoteNotification(
            body: 'body',
            title: 'title',
          ),
        ),
      );
      await Future.delayed(Duration.zero);

      onForegroundMessageStream.add(
        RemoteMessage(
          messageId: '3',
          sentTime: expectedNotifications[2].sentTime,
          data: {'senderUID': 'foobar'},
          notification: const RemoteNotification(
            body: 'body',
            title: 'title',
          ),
        ),
      );
    },
  );

  test(
    'Notifications Service => registerFCMTokenAndListenForChanges',
    () async {
      final unit = _createNewUnit();
      addTearDown(unit.dispose);

      const expectedToken = '_token_';

      when(GetIt.I<FirebaseMessaging>().isSupported())
          .thenAnswer((_) async => true);
      when(GetIt.I<FirebaseMessaging>().getToken())
          .thenAnswer((_) async => expectedToken);

      when(GetIt.I<UserSettingsService>().registeredFCMToken)
          .thenReturn(expectedToken + 'something else');

      await expectLater(
        unit.registerFCMTokenAndListenForChanges(),
        completion(isTrue),
      );

      verifyInOrder(
        [
          GetIt.I<CAFunctionsService>().registerFCMToken(expectedToken),
          GetIt.I<UserSettingsService>().setRegisteredFCMToken(expectedToken),
        ],
      );
    },
  );
}

CANotificationsService _createNewUnit() {
  return CANotificationsService(
    onForegroundMessageStream: const Stream.empty(),
    onMessageOpenedAppStream: const Stream.empty(),
  );
}

Future<void> _setUp() async {
  await _setUpPermissionHandler();

  await _setUpFirebaseMessaging();

  _setUpLocalNotificationsPlugin();

  _setUpAuthService();

  _setUpUserSettingsService();

  _setUpFunctionsService();

  _setUpStorage();
}

void _setUpStorage() {
  GetIt.I.registerSingleton<NotificationsStorage>(MockNotificationsStorage());
}

void _setUpFunctionsService() {
  GetIt.I.registerSingleton<CAFunctionsService>(MockCAFunctionsService());
}

void _setUpUserSettingsService() {
  GetIt.I.registerSingleton<UserSettingsService>(MockUserSettingsService());
}

void _setUpAuthService() {
  final mockAuthService = MockAuthService();

  when(mockAuthService.isSignedIn).thenReturn(true);

  GetIt.I.registerSingleton<AuthService>(mockAuthService);
}

void _setUpLocalNotificationsPlugin() {
  GetIt.I.registerSingleton<FlutterLocalNotificationsPlugin>(
    MockFlutterLocalNotificationsPlugin(),
  );
}

Future<void> _setUpFirebaseMessaging() async {
  final notificationSettings = MockNotificationSettings();
  when(notificationSettings.authorizationStatus)
      .thenReturn(AuthorizationStatus.authorized);

  final mockFirebaseMessaging = MockFirebaseMessaging();
  when(mockFirebaseMessaging.requestPermission()).thenAnswer(
    (_) async => notificationSettings,
  );

  GetIt.I.registerSingleton<FirebaseMessaging>(mockFirebaseMessaging);
}

Future<void> _setUpPermissionHandler() async {
  final mockPermissionHandlerPlatform = MockPermissionHandlerPlatform();

  when(
    mockPermissionHandlerPlatform.requestPermissions(any),
  ).thenAnswer(
    (i) async => {i.positionalArguments[0][0]: PermissionStatus.granted},
  );

  PermissionHandlerPlatform.instance = mockPermissionHandlerPlatform;
}

class MockPermissionHandlerPlatform extends PermissionHandlerPlatform_
    with MockPlatformInterfaceMixin {}
