import 'dart:async';
import 'dart:collection';
import 'dart:ui';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:church_admin/church_admin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/file.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:riverpod/riverpod.dart';

import 'notifications_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<PermissionHandlerPlatform>(
    as: #PermissionHandlerPlatform_,
  ),
  MockSpec<FirebaseMessaging>(),
  MockSpec<NotificationSettings>(),
  MockSpec<FlutterLocalNotificationsPlugin>(),
  MockSpec<AuthBloc>(),
  MockSpec<UserSettingsService>(),
  MockSpec<FunctionsService>(),
  MockSpec<InitializationService>(),
  MockSpec<NotificationsStorage>(),
  MockSpec<NotificationsSettingsStorage>(),
  MockSpec<NotificationsService>(),
  MockSpec<BaseCacheManager>(),
  MockSpec<File>(),
])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group(
    'Notifications Service =>',
    () {
      setUp(_setUp);
      tearDown(resetGlobalProviderContainer);

      group(
        'requestNotificationsPermission =>',
        () {
          test(
            'true',
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
            '(false: denied device notifications)',
            () async {
              final unit = _createNewUnit();
              addTearDown(unit.dispose);

              when(
                (PermissionHandlerPlatform.instance
                        as MockPermissionHandlerPlatform)
                    .requestPermissions(any),
              ).thenAnswer(
                (i) async =>
                    {i.positionalArguments[0][0]: PermissionStatus.denied},
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
        },
      );

      group(
        'notificationsDetailsFor',
        () {
          const imageURL = 'http://example.com/image.jpg';

          setUp(
            () {
              final mockFile = MockFile();
              when(mockFile.path).thenReturn('mockFilePath');

              when(
                globalProviderContainer
                    .read(baseCacheManagerProvider)
                    .getSingleFile(imageURL),
              ).thenAnswer((_) async => mockFile);
            },
          );

          tearDown(
            () {
              reset(globalProviderContainer.read(baseCacheManagerProvider));
            },
          );

          test(
            'returns correct NotificationDetails',
            () async {
              final notification = Notification(
                id: 'id',
                title: 'title',
                body: 'body',
                senderUID: 'senderUID',
                sentTime: DateTime.now().subtract(const Duration(minutes: 4)),
                additionalData: const {},
                type: NotificationType.local,
                imageURL: imageURL,
              );

              final notificationDetails =
                  await NotificationsService.notificationsDetailsFor(
                notification,
              );

              expect(
                notificationDetails.android?.styleInformation,
                isA<BigPictureStyleInformation>(),
              );
              expect(
                (notificationDetails.android!.styleInformation!
                        as BigPictureStyleInformation)
                    .bigPicture
                    .data,
                'mockFilePath',
              );
              expect(
                notificationDetails.iOS?.attachments?.first.filePath,
                'mockFilePath',
              );
            },
          );

          test(
            'returns default if notification has no imageURL',
            () async {
              final notification = Notification(
                id: 'id',
                title: 'title',
                body: 'body',
                senderUID: 'senderUID',
                sentTime: DateTime.now().subtract(const Duration(minutes: 4)),
                additionalData: const {},
                type: NotificationType.local,
              );

              final notificationDetails =
                  await NotificationsService.notificationsDetailsFor(
                notification,
              );

              expect(
                notificationDetails,
                NotificationsService.defaultRemoteNotificationsDetails,
              );
            },
          );
        },
      );

      test(
        'notify',
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

          await unit.notify(
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

          await unit.notify(
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
        'pausing/resuming listeners',
        () {
          final unit = _createNewUnit();
          addTearDown(unit.dispose);

          expect(unit.isPaused, isTrue);

          unit.pauseListeners();
          expect(unit.isPaused, isTrue);

          unit.resumeListeners();
          expect(unit.isPaused, isFalse);
        },
      );

      group(
        'getInitialNotification =>',
        () {
          test(
            'Remote',
            () async {
              final unit = _createNewUnit();
              addTearDown(unit.dispose);

              final initialRemoteMessage = RemoteMessage(
                notification:
                    const RemoteNotification(title: 'title', body: 'body'),
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
                completion(
                  Notification.fromRemoteMessage(initialRemoteMessage),
                ),
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
            'Local',
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
            'onNotificationTapStream',
            () async {
              final onMessageOpenedAppStream =
                  StreamController<RemoteMessage>();
              final onForegroundMessageStream =
                  StreamController<RemoteMessage>();

              final unit = NotificationsService(
                authBloc: MockAuthBloc(),
                settings: MockNotificationsSettingsStorage(),
                localNotificationsPlugin: globalProviderContainer
                    .read(localNotificationsPluginProvider),
                firebaseMessaging:
                    globalProviderContainer.read(firebaseMessagingProvider),
                onMessageOpenedAppStream: onMessageOpenedAppStream.stream,
                onForegroundMessageStream: onForegroundMessageStream.stream,
              );
              addTearDown(unit.dispose);
              addTearDown(onMessageOpenedAppStream.close);
              addTearDown(onForegroundMessageStream.close);

              final expectedInitialNotification = Notification(
                id: 'smth',
                body: 'body',
                title: 'title',
                sentTime: DateTime.now(),
                senderUID: 'foobar',
              );

              _mockLocalInitialNotification(expectedInitialNotification);

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

              await expectLater(
                unit.onNotificationTapStream
                    .timeout(const Duration(seconds: 2)),
                emitsError(isA<TimeoutException>()),
              );

              unit.resumeListeners();

              expect(
                unit.onNotificationTapStream,
                emitsInOrder(
                  [expectedInitialNotification, expectedNotifications[1]],
                ),
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

              await Future.delayed(Duration.zero);

              final localNotificationsPlugin = globalProviderContainer
                  .read(localNotificationsPluginProvider);

              verifyInOrder(
                [
                  localNotificationsPlugin.getNotificationAppLaunchDetails(),
                  localNotificationsPlugin.show(
                    expectedNotifications[0].hashCode,
                    expectedNotifications[0].title,
                    expectedNotifications[0].body,
                    await NotificationsService.notificationsDetailsFor(
                      expectedNotifications[0],
                    ),
                    payload: expectedNotifications[0].id,
                  ),
                  localNotificationsPlugin.show(
                    expectedNotifications[2].hashCode,
                    expectedNotifications[2].title,
                    expectedNotifications[2].body,
                    await NotificationsService.notificationsDetailsFor(
                      expectedNotifications[2],
                    ),
                    payload: expectedNotifications[2].id,
                  ),
                ],
              );
            },
          );

          test(
            'registerFCMTokenAndListenForChanges',
            () async {
              final unit = _createNewUnit();
              addTearDown(unit.dispose);

              const expectedToken = '_token_';

              when(
                globalProviderContainer
                    .read(firebaseMessagingProvider)
                    .isSupported(),
              ).thenAnswer((_) async => true);
              when(
                globalProviderContainer
                    .read(firebaseMessagingProvider)
                    .getToken(),
              ).thenAnswer((_) async => expectedToken);

              when(
                globalProviderContainer
                    .read(userSettingsServiceProvider)
                    .registeredFCMToken,
              ).thenReturn('${expectedToken}something else');

              await expectLater(
                unit.registerFCMTokenAndListenForChanges(),
                completion(isTrue),
              );

              verifyInOrder(
                [
                  FunctionsService.I.registerFCMToken(expectedToken),
                  globalProviderContainer
                      .read(userSettingsServiceProvider)
                      .setRegisteredFCMToken(expectedToken),
                ],
              );
            },
          );
        },
      );

      group(
        'onBackgroundMessageReceived',
        () {
          test(
            'manualRemotePush',
            () async {
              final remoteMessage = RemoteMessage(
                messageId: '1',
                sentTime: DateTime.now(),
                data: {
                  'senderUID': 'foobar',
                  'title': 'asasa',
                  'body': 'asasas',
                },
              );

              final expectedNotification =
                  Notification.fromRemoteMessage(remoteMessage);

              await NotificationsServiceCallbacks.onBackgroundMessageReceived(
                remoteMessage,
              );

              verifyInOrder([
                InitializationService.I.initialize(),
                NotificationsStorage.I.writeNotification(expectedNotification),
                NotificationsService.I.notify(
                  expectedNotification,
                  notificationDetails:
                      await NotificationsService.notificationsDetailsFor(
                    expectedNotification,
                  ),
                ),
              ]);
            },
          );

          test(
            'remote',
            () async {
              final remoteMessage = RemoteMessage(
                messageId: '1',
                sentTime: DateTime.now(),
                data: {'senderUID': 'foobar'},
                notification: const RemoteNotification(
                  body: 'body',
                  title: 'title',
                ),
              );

              final expectedNotification =
                  Notification.fromRemoteMessage(remoteMessage);

              await NotificationsServiceCallbacks.onBackgroundMessageReceived(
                remoteMessage,
              );

              verifyInOrder([
                InitializationService.I.initialize(),
                NotificationsStorage.I.writeNotification(expectedNotification),
              ]);
              verifyNever(
                (NotificationsService.I as MockNotificationsService).notify(
                  any,
                  notificationDetails: anyNamed('notificationDetails'),
                  id: anyNamed('id'),
                ),
              );
            },
          );
        },
      );

      group(
        'Schedule Notifications',
        () {
          test(
            'scheduleBirthDayNotification',
            () async {
              MethodCall? capturedCall;
              _setUpAlarmManagerPlatformChannel((call) async {
                capturedCall = call;
                return true;
              });

              final unit = _createNewUnit();

              const notificationSetting = NotificationSetting(4, 5, 2);
              await unit.scheduleBirthDayNotification(notificationSetting);

              verify(
                NotificationsSettingsStorage.I
                    .setBirthDayTime(notificationSetting),
              );

              expect(capturedCall, isNotNull);
              expect(capturedCall!.method, 'Alarm.periodic');
              expect(
                capturedCall!.arguments,
                _callArgumentsMatchFor(
                  notificationSetting: notificationSetting,
                  name: 'BirthDay',
                  callback:
                      NotificationsServiceCallbacks.showBirthDayNotification,
                ),
              );
            },
          );

          test(
            'scheduleMeetingNotification',
            () async {
              MethodCall? capturedCall;
              _setUpAlarmManagerPlatformChannel((call) async {
                capturedCall = call;
                return true;
              });

              final unit = _createNewUnit();

              const notificationSetting = NotificationSetting(4, 5, 2);
              await unit.scheduleMeetingNotification(notificationSetting);

              verify(
                NotificationsSettingsStorage.I
                    .setMeetingTime(notificationSetting),
              );

              expect(capturedCall, isNotNull);
              expect(capturedCall!.method, 'Alarm.periodic');
              expect(
                capturedCall!.arguments,
                _callArgumentsMatchFor(
                  notificationSetting: notificationSetting,
                  name: 'Meeting',
                  callback:
                      NotificationsServiceCallbacks.showMeetingNotification,
                ),
              );
            },
          );

          test(
            'scheduleKodasNotification',
            () async {
              MethodCall? capturedCall;
              _setUpAlarmManagerPlatformChannel((call) async {
                capturedCall = call;
                return true;
              });

              final unit = _createNewUnit();

              const notificationSetting = NotificationSetting(4, 5, 2);
              await unit.scheduleKodasNotification(notificationSetting);

              verify(
                NotificationsSettingsStorage.I
                    .setKodasTime(notificationSetting),
              );

              expect(capturedCall, isNotNull);
              expect(capturedCall!.method, 'Alarm.periodic');
              expect(
                capturedCall!.arguments,
                _callArgumentsMatchFor(
                  notificationSetting: notificationSetting,
                  name: 'Kodas',
                  callback: NotificationsServiceCallbacks.showKodasNotification,
                ),
              );
            },
          );

          test(
            'scheduleConfessionNotification',
            () async {
              MethodCall? capturedCall;
              _setUpAlarmManagerPlatformChannel((call) async {
                capturedCall = call;
                return true;
              });

              final unit = _createNewUnit();

              const notificationSetting = NotificationSetting(4, 5, 2);
              await unit.scheduleConfessionNotification(notificationSetting);

              verify(
                NotificationsSettingsStorage.I
                    .setConfessionTime(notificationSetting),
              );

              expect(capturedCall, isNotNull);
              expect(capturedCall!.method, 'Alarm.periodic');
              expect(
                capturedCall!.arguments,
                _callArgumentsMatchFor(
                  notificationSetting: notificationSetting,
                  name: 'Confession',
                  callback:
                      NotificationsServiceCallbacks.showConfessionNotification,
                ),
              );
            },
          );
        },
      );
    },
  );
}

void _mockLocalInitialNotification(Notification expectedInitialNotification) {
  when(
    globalProviderContainer
        .read(localNotificationsPluginProvider)
        .getNotificationAppLaunchDetails(),
  ).thenAnswer(
    (_) async => NotificationAppLaunchDetails(
      true,
      notificationResponse: NotificationResponse(
        notificationResponseType: NotificationResponseType.selectedNotification,
        payload: expectedInitialNotification.id,
      ),
    ),
  );

  when(
    globalProviderContainer
        .read(notificationsStorageProvider)
        .readNotification(expectedInitialNotification.id),
  ).thenAnswer((_) async => expectedInitialNotification);
}

List<Object> _callArgumentsMatchFor({
  required NotificationSetting notificationSetting,
  required String name,
  required VoidCallback callback,
}) {
  return [
    name.hashCode,
    true,
    true,
    true,
    anything,
    notificationSetting.intervalInDays * 24 * 60 * 60 * 1000,
    true,
    PluginUtilities.getCallbackHandle(callback)!.toRawHandle(),
    {},
  ];
}

NotificationsService _createNewUnit() {
  return NotificationsService(
    authBloc: AuthBloc.I,
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
    _setUpInitializationService(),
    await _setUpFirebaseMessaging(),
    _setUpLocalNotificationsPlugin(),
    _setUpAuthBloc(),
    _setUpUserSettingsService(),
    _setUpFunctionsService(),
    _setUpStorage(),
    _setUpNotificationsService(),
    _setUpNotificationsSettingsStorage(),
    _setUpCacheManager(),
    _setUpCurrentPlatformService(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpInitializationService() {
  return initializationServiceProvider
      .overrideWithValue(MockInitializationService());
}

Override _setUpStorage() {
  return notificationsStorageProvider
      .overrideWithValue(MockNotificationsStorage());
}

Override _setUpFunctionsService() {
  return functionsServiceProvider.overrideWithValue(MockFunctionsService());
}

Override _setUpUserSettingsService() {
  return userSettingsServiceProvider
      .overrideWithValue(MockUserSettingsService());
}

Override _setUpAuthBloc() {
  final mockAuthBloc = MockAuthBloc();

  when(mockAuthBloc.isSignedIn).thenReturn(true);

  return authBlocProvider.overrideWithValue(mockAuthBloc);
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

Override _setUpNotificationsService() {
  final notificationsService = MockNotificationsService();

  return notificationsServiceProvider.overrideWithValue(notificationsService);
}

void _setUpAlarmManagerPlatformChannel(
  Future<dynamic> Function(MethodCall) onMethodCall,
) {
  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMethodCallHandler(
    AndroidAlarmManager.channel,
    onMethodCall,
  );
}

Override _setUpNotificationsSettingsStorage() {
  return notificationsSettingsProvider
      .overrideWithValue(MockNotificationsSettingsStorage());
}

Override _setUpCacheManager() {
  return baseCacheManagerProvider.overrideWithValue(
    MockBaseCacheManager(),
  );
}

Override _setUpCurrentPlatformService() {
  return currentPlatformServiceProvider.overrideWithValue(
    const CurrentPlatformService(PlatformValue.android),
  );
}

class MockPermissionHandlerPlatform extends PermissionHandlerPlatform_
    with MockPlatformInterfaceMixin {}
