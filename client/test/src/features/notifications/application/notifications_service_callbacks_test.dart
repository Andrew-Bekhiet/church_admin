import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    hide Person;
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart' hide Notification;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/recording_analytics_provider.dart';
import 'notifications_service_callbacks_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<NotificationsStorage>(),
  MockSpec<InitializationService>(),
  MockSpec<AuthBloc>(),
  MockSpec<NotificationsService>(),
  MockSpec<DatabaseService>(),
  MockSpec<AdvancedQueryParser>(),
  MockSpec<PaginatableStreamBase>(),
])
late RecordingAnalyticsProvider analytics;

void main() {
  group(
    'NotificationsServiceCallbacks =>',
    () {
      setUp(_setUp);
      tearDown(resetGlobalProviderContainer);

      testWidgets(
        'onDidReceiveNotificationResponse',
        (tester) async {
          final expectedNotification = Notification(
            id: 'id1234',
            title: 'title',
            body: 'body',
            sentTime: DateTime.now(),
            senderUID: 's',
          );
          when(
            NotificationsStorage.I.readNotification(expectedNotification.id),
          ).thenAnswer((_) async => expectedNotification);

          await tester.pumpWidget(
            const MaterialApp(
              home: Scaffold(
                body: SizedBox(),
              ),
            ),
          );

          await tester.pumpAndSettle();

          await NotificationsServiceCallbacks.onForegroundNotificationTap(
            NotificationResponse(
              notificationResponseType:
                  NotificationResponseType.selectedNotification,
              payload: expectedNotification.id,
            ),
          );

          verifyInOrder([
            NotificationsStorage.I.readNotification(expectedNotification.id),
            NotificationsService.I.addForegroundNotificationTap(
              expectedNotification,
            ),
          ]);
        },
      );

      test(
        'tapping a local notification is tracked as opening it',
        () async {
          final notification = Notification(
            id: 'id1234',
            title: 'title',
            body: 'body',
            sentTime: DateTime.now(),
            senderUID: 's',
          );
          when(
            NotificationsStorage.I.readNotification(notification.id),
          ).thenAnswer((_) async => notification);

          await NotificationsServiceCallbacks.onForegroundNotificationTap(
            NotificationResponse(
              notificationResponseType:
                  NotificationResponseType.selectedNotification,
              payload: notification.id,
            ),
          );

          expect(analytics.trackedEvents, [
            isA<NotificationOpen>()
                .having(
                  (event) => event.source,
                  'source',
                  NotificationOpenSource.localTap,
                )
                .having(
                  (event) => event.notificationType,
                  'notificationType',
                  notification.type,
                )
                .having((event) => event.hasImage, 'hasImage', false)
                .having((event) => event.hasQuery, 'hasQuery', false),
          ]);
        },
      );

      test(
        'a reminder is tracked with how many persons it found',
        () async {
          await NotificationsServiceCallbacks.showKodasNotification();

          expect(
            analytics.trackedEventsOf<NotificationReminderFire>().single,
            isA<NotificationReminderFire>()
                .having(
                  (event) => event.reminderType,
                  'reminderType',
                  LocalNotificationType.kodas.name,
                )
                .having(
                  (event) => event.personCount,
                  'personCount',
                  expectedPersons.length,
                ),
          );
        },
      );

      test(
        'an empty reminder shows nothing and tracks nothing',
        () async {
          _stubReminderPersons(const []);

          await _showReminder();

          expect(analytics.trackedEvents, isEmpty);
          verifyNever(
            (NotificationsStorage.I as MockNotificationsStorage)
                .writeNotification(
                  argThat(predicate<Notification>((_) => true)),
                ),
          );
        },
      );

      group(
        'showing notifications',
        () {
          test(
            'showKodasNotification',
            () async {
              await _testNotificationMethod(
                title: 'إشعارات القداس',
                channelName: 'إشعارات القداس',
                channelDescription: 'إشعارات القداس',
                channelId: 'Kodas',
                callback: NotificationsServiceCallbacks.showKodasNotification,
                type: LocalNotificationType.kodas,
              );
            },
          );

          test(
            'showAttendanceNotification',
            () async {
              await _testNotificationMethod(
                channelName: 'إشعارات حضور الاجتماع',
                channelDescription: 'إشعارات حضور الاجتماع',
                title: 'إنذار حضور الاجتماع',
                channelId: 'Attendance',
                callback:
                    NotificationsServiceCallbacks.showAttendanceNotification,
                type: LocalNotificationType.attendance,
              );
            },
          );

          test(
            'showVisitNotification',
            () async {
              await _testNotificationMethod(
                channelName: 'إشعارات الافتقاد',
                channelDescription: 'إشعارات الافتقاد',
                title: 'إنذار الافتقاد',
                channelId: 'Visit',
                callback: NotificationsServiceCallbacks.showVisitNotification,
                type: LocalNotificationType.visit,
              );
            },
          );

          test(
            'showConfessionNotification',
            () async {
              await _testNotificationMethod(
                channelName: 'إشعارات الاعتراف',
                channelDescription: 'إشعارات الاعتراف',
                title: 'إنذار الاعتراف',
                channelId: 'Confession',
                callback:
                    NotificationsServiceCallbacks.showConfessionNotification,
                type: LocalNotificationType.confession,
              );
            },
          );

          test(
            'showBirthDayNotification',
            () async {
              await _testNotificationMethod(
                channelName: 'إشعارات أعياد الميلاد',
                channelDescription: 'إشعارات أعياد الميلاد',
                title: 'أعياد الميلاد',
                channelId: 'Birthday',
                icon: 'birthday',
                callback:
                    NotificationsServiceCallbacks.showBirthDayNotification,
                type: LocalNotificationType.birthday,
              );
            },
          );
        },
      );
    },
  );
}

Future<void> _testNotificationMethod({
  required String title,
  required String channelName,
  required String channelDescription,
  required String channelId,
  required LocalNotificationType type,
  required Future<void> Function() callback,
  String icon = 'warning_notification',
}) async {
  await callback();

  final written =
      verify(
            (NotificationsStorage.I as MockNotificationsStorage)
                .writeNotification(captureAny),
          ).captured.single
          as Notification;
  final notified = verify(
    (NotificationsService.I as MockNotificationsService).notify(
      captureAny,
      id: type.index,
      notificationDetails: captureAnyNamed('notificationDetails'),
    ),
  ).captured;

  for (final notification in [written, notified[0] as Notification]) {
    expect(notification.title, title);
    expect(notification.body, 'name، name2');
    expect(notification.senderUID, 'LOCAL_NOTIFICATION_SENDER_UID');
    expect(notification.type, NotificationType.local);
  }

  final android = (notified[1] as NotificationDetails).android!;
  expect(android.channelId, channelId);
  expect(android.channelName, channelName);
  expect(android.channelDescription, channelDescription);
  expect(android.icon, icon);
  expect(android.autoCancel, false);
  expect(android.category, AndroidNotificationCategory.reminder);
  expect(android.visibility, NotificationVisibility.secret);
  expect(android.showWhen, false);

  expect(
    json.encode(written.additionalData),
    contains(type.name),
  );
}

void _stubReminderPersons(List<Person> persons) {
  final stream = MockPaginatableStreamBase<Person>();
  when(stream.first).thenAnswer((_) async => persons);
  final advancedQueryParser =
      DatabaseService.I.advancedQueryParser as MockAdvancedQueryParser;
  when(
    advancedQueryParser.createPaginatableStream(any),
  ).thenAnswer((_) => stream);
}

Future<void> _showReminder() => NotificationsServiceCallbacks.showNotification(
  channelId: 'Kodas',
  channelName: 'إشعارات القداس',
  channelDescription: 'إشعارات القداس',
  title: 'إشعارات القداس',
  type: LocalNotificationType.kodas,
  query: AdvancedQuery(queryableType: AdvancedQueriesMetadata().person),
);

void _setUp() {
  analytics = RecordingAnalyticsProvider();
  final overrides = [
    _setUpMockInitializationService(),
    _setUpMockAuthBloc(),
    _setUpMockNotificationsStorage(),
    _setUpMockNotificationsService(),
    _setUpMockDatabaseService(),
    analyticsServiceProvider.overrideWithValue(
      AnalyticsService([analytics], FakeLoggingService()),
    ),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpMockInitializationService() {
  final mockInitializationService = MockInitializationService();

  return initializationServiceProvider.overrideWithValue(
    mockInitializationService,
  );
}

Override _setUpMockAuthBloc() {
  final mockAuthBloc = MockAuthBloc();

  const authUser = AuthUser(
    uid: 'uid',
    email: 'email',
    emailVerified: true,
    idToken: 'idToken',
    claims: {AuthUser.hasuraUserIdKey: 'hasura-user-id'},
  );

  when(mockAuthBloc.isSignedIn).thenReturn(true);
  when(mockAuthBloc.isApproved).thenReturn(true);
  when(mockAuthBloc.currentUser).thenReturn(authUser);
  when(mockAuthBloc.userStream).thenAnswer((_) => Stream.value(authUser));

  return authBlocProvider.overrideWithValue(mockAuthBloc);
}

Override _setUpMockNotificationsStorage() {
  final mockNotificationsStorage = MockNotificationsStorage();

  return notificationsStorageProvider.overrideWithValue(
    mockNotificationsStorage,
  );
}

Override _setUpMockNotificationsService() {
  final mockNotificationsService = MockNotificationsService();

  when(
    mockNotificationsService.notify(
      any,
      id: anyNamed('id'),
      notificationDetails: anyNamed('notificationDetails'),
    ),
  ).thenAnswer((_) async {
    return;
  });

  return notificationsServiceProvider.overrideWithValue(
    mockNotificationsService,
  );
}

final expectedPersons = [
  Person(id: 'id', name: 'name'),
  Person(id: 'id2', name: 'name2'),
];

Override _setUpMockDatabaseService() {
  final expectedStream = MockPaginatableStreamBase<Person>();

  when(
    expectedStream.first,
  ).thenAnswer((_) async => expectedPersons);

  final mockAdvQueryParser = MockAdvancedQueryParser();
  when(
    mockAdvQueryParser.createPaginatableStream(any),
  ).thenAnswer((_) => expectedStream);

  final mockDatabaseService = MockDatabaseService();

  when(
    mockDatabaseService.advancedQueryParser,
  ).thenReturn(mockAdvQueryParser);

  return databaseServiceProvider.overrideWithValue(mockDatabaseService);
}
