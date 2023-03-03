import 'dart:async';
import 'dart:collection';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/notifications/notifications_storage.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:riverpod/src/framework.dart';

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
  tearDown(resetGlobalProviderContainer);

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
        globalProviderContainer
            .read(firebaseMessagingProvider)
            .requestPermission(),
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
      verifyNever(
        globalProviderContainer
            .read(firebaseMessagingProvider)
            .requestPermission(),
      );
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

      when(
        globalProviderContainer
            .read(firebaseMessagingProvider)
            .requestPermission(),
      ).thenAnswer(
        (_) async => notificationSettings,
      );

      await expectLater(
        unit.requestNotificationsPermission(),
        completion(isFalse),
      );

      verifyInOrder([
        PermissionHandlerPlatform.instance
            .requestPermissions([Permission.notification]),
        globalProviderContainer
            .read(firebaseMessagingProvider)
            .requestPermission(),
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
        globalProviderContainer.read(localNotificationsPluginProvider).show(
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
        globalProviderContainer.read(localNotificationsPluginProvider).show(
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

      when(
        globalProviderContainer
            .read(firebaseMessagingProvider)
            .getInitialMessage(),
      ).thenAnswer((_) async => initialRemoteMessage);

      await expectLater(
        unit.getInitialNotification(),
        completion(Notification.fromRemoteMessage(initialRemoteMessage)),
      );

      verify(
        globalProviderContainer
            .read(firebaseMessagingProvider)
            .getInitialMessage(),
      );
      verifyNever(
        globalProviderContainer
            .read(localNotificationsPluginProvider)
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
        globalProviderContainer
            .read(localNotificationsPluginProvider)
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

      when(
        globalProviderContainer
            .read(notificationsStorageProvider)
            .readNotification(notificationId),
      ).thenAnswer((_) async => expectedNotification);

      await expectLater(
        unit.getInitialNotification(),
        completion(expectedNotification),
      );

      verifyInOrder([
        globalProviderContainer
            .read(firebaseMessagingProvider)
            .getInitialMessage(),
        globalProviderContainer
            .read(localNotificationsPluginProvider)
            .getNotificationAppLaunchDetails(),
        globalProviderContainer
            .read(notificationsStorageProvider)
            .readNotification(notificationId),
      ]);
    },
  );

  test(
    'Notifications Service => foregroundNotificationsStream',
    () async {
      final onMessageOpenedAppStream = StreamController<RemoteMessage>();
      final onForegroundMessageStream = StreamController<RemoteMessage>();

      final unit = CANotificationsService(
        localNotificationsPlugin:
            globalProviderContainer.read(localNotificationsPluginProvider),
        firebaseMessaging:
            globalProviderContainer.read(firebaseMessagingProvider),
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

      when(
        globalProviderContainer.read(firebaseMessagingProvider).isSupported(),
      ).thenAnswer((_) async => true);
      when(globalProviderContainer.read(firebaseMessagingProvider).getToken())
          .thenAnswer((_) async => expectedToken);

      when(
        globalProviderContainer
            .read(userSettingsServiceProvider)
            .registeredFCMToken,
      ).thenReturn(expectedToken + 'something else');

      await expectLater(
        unit.registerFCMTokenAndListenForChanges(),
        completion(isTrue),
      );

      verifyInOrder(
        [
          CAFunctionsService.I.registerFCMToken(expectedToken),
          globalProviderContainer
              .read(userSettingsServiceProvider)
              .setRegisteredFCMToken(expectedToken),
        ],
      );
    },
  );
}

CANotificationsService _createNewUnit() {
  return CANotificationsService(
    localNotificationsPlugin:
        globalProviderContainer.read(localNotificationsPluginProvider),
    firebaseMessaging: globalProviderContainer.read(firebaseMessagingProvider),
    onForegroundMessageStream: const Stream.empty(),
    onMessageOpenedAppStream: const Stream.empty(),
  );
}

Future<void> _setUp() async {
  await _setUpPermissionHandler();

  final overrides = [
    await _setUpFirebaseMessaging(),
    _setUpLocalNotificationsPlugin(),
    _setUpAuthService(),
    _setUpUserSettingsService(),
    _setUpFunctionsService(),
    _setUpStorage(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpStorage() {
  return notificationsStorageProvider
      .overrideWithValue(MockNotificationsStorage());
}

Override _setUpFunctionsService() {
  return functionsServiceProvider.overrideWithValue(MockCAFunctionsService());
}

Override _setUpUserSettingsService() {
  return userSettingsServiceProvider
      .overrideWithValue(MockUserSettingsService());
}

Override _setUpAuthService() {
  final mockAuthService = MockAuthService();

  when(mockAuthService.isSignedIn).thenReturn(true);

  return authServiceProvider.overrideWithValue(mockAuthService);
}

Override _setUpLocalNotificationsPlugin() {
  return localNotificationsPluginProvider.overrideWithValue(
    MockFlutterLocalNotificationsPlugin(),
  );
}

Future<Override> _setUpFirebaseMessaging() async {
  final notificationSettings = MockNotificationSettings();
  when(notificationSettings.authorizationStatus)
      .thenReturn(AuthorizationStatus.authorized);

  final mockFirebaseMessaging = MockFirebaseMessaging();
  when(mockFirebaseMessaging.requestPermission()).thenAnswer(
    (_) async => notificationSettings,
  );

  return firebaseMessagingProvider.overrideWithValue(mockFirebaseMessaging);
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
