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
  final expectedNotification =
      NotificationsServiceCallbacks.makeNotificationWith(
        title: title,
        persons: expectedPersons,
        additionalData: const {},
      );

  final expectedNotificationDetails = NotificationDetails(
    android: NotificationsServiceCallbacks.androidNotificationDetailsFor(
      channelId,
      channelName,
      channelDescription: channelDescription,
      body: expectedPersons.map((e) => e.name).join(', '),
      icon: icon,
    ),
  );
  final advancedQueryParser =
      DatabaseService.I.advancedQueryParser as MockAdvancedQueryParser;

  await callback();

  final paginatableStreamCall = verifyInOrder([
    InitializationService.I.initialize(),
    advancedQueryParser.createPaginatableStream(captureAny),
    (NotificationsStorage.I as MockNotificationsStorage).writeNotification(
      argThat(matchExpectedNotification(expectedNotification)),
    ),
    (NotificationsService.I as MockNotificationsService).notify(
      argThat(matchExpectedNotification(expectedNotification)),
      id: type.index,
      notificationDetails: argThat(
        matchExpectedNotificationDetails(expectedNotificationDetails),
        named: 'notificationDetails',
      ),
    ),
  ]).captured[1];

  final advQueryJson = json.encode(
    (paginatableStreamCall.first as AdvancedQuery).toJson(),
  );

  expect(
    advQueryJson,
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

Matcher matchExpectedNotificationDetails(NotificationDetails expected) =>
    predicate<NotificationDetails>(
      (n) =>
          n.android!.channelId == expected.android!.channelId &&
          n.android!.channelName == expected.android!.channelName &&
          n.android!.channelDescription ==
              expected.android!.channelDescription &&
          n.android!.icon == expected.android!.icon &&
          n.android!.autoCancel == expected.android!.autoCancel &&
          n.android!.category == expected.android!.category &&
          n.android!.visibility == expected.android!.visibility &&
          n.android!.showWhen == expected.android!.showWhen,
    );
Matcher matchExpectedNotification(Notification expectedNotification) =>
    predicate<Notification>(
      (n) =>
          n.title == expectedNotification.title &&
          n.body == expectedNotification.body &&
          n.senderUID == expectedNotification.senderUID &&
          n.type == expectedNotification.type,
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
