import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions.dart';
import 'package:church_admin/src/services/database/gql_definintions/persons/persons_notifications_queries.dart';
import 'package:church_admin/src/services/notifications/notifications_storage.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    hide Person;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'notifications_service_callbacks_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<NotificationsStorage>(),
  MockSpec<InitializationService>(),
  MockSpec<AuthService>(),
  MockSpec<NotificationsService>(),
  MockSpec<DatabaseService>(),
  MockSpec<PersonsDAO>(),
  MockSpec<PersonsNotificationsQueries>(),
])
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

          await NotificationsServiceCallbacks.onDidReceiveNotificationResponse(
            NotificationResponse(
              notificationResponseType:
                  NotificationResponseType.selectedNotification,
              payload: expectedNotification.id,
            ),
          );

          verifyInOrder([
            NotificationsStorage.I.readNotification(expectedNotification.id),
            NotificationsService.I
                .addForegroundNotification(expectedNotification),
          ]);
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
                expectedNotificationsQueriesCall: (q) =>
                    q.getPersonsKodasWarning(date: anyNamed('date')),
              );
            },
          );

          test(
            'showMeetingNotification',
            () async {
              await _testNotificationMethod(
                channelName: 'إشعارات حضور الاجتماع',
                channelDescription: 'إشعارات حضور الاجتماع',
                title: 'إنذار حضور الاجتماع',
                channelId: 'Meeting',
                callback: NotificationsServiceCallbacks.showMeetingNotification,
                type: LocalNotificationType.meeting,
                expectedNotificationsQueriesCall: (q) =>
                    q.getPersonsMeetingWarning(date: anyNamed('date')),
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
                expectedNotificationsQueriesCall: (q) =>
                    q.getPersonsVisitWarning(date: anyNamed('date')),
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
                expectedNotificationsQueriesCall: (q) =>
                    q.getPersonsConfessionWarning(date: anyNamed('date')),
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
                callback:
                    NotificationsServiceCallbacks.showBirthDayNotification,
                type: LocalNotificationType.birthday,
                expectedNotificationsQueriesCall: (q) =>
                    q.getBirthdayPersons(date: anyNamed('date')),
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
  required void Function(MockPersonsNotificationsQueries)
      expectedNotificationsQueriesCall,
  required Future<void> Function() callback,
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
    ),
  );

  await callback();

  final notificationsQueries = DatabaseService.I.persons.notificationsQueries
      as MockPersonsNotificationsQueries;

  verifyInOrder([
    InitializationService.I.initialize(),
    AuthService.I.isSignedIn,
    expectedNotificationsQueriesCall(notificationsQueries),
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
  ]);
}

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
  final overrides = [
    _setUpMockInitializationService(),
    _setUpMockAuthService(),
    _setUpMockNotificationsStorage(),
    _setUpMockNotificationsService(),
    _setUpMockDatabaseService(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpMockInitializationService() {
  final mockInitializationService = MockInitializationService();

  return initializationServiceProvider
      .overrideWithValue(mockInitializationService);
}

Override _setUpMockAuthService() {
  final mockAuthService = MockAuthService();

  when(mockAuthService.isSignedIn).thenReturn(true);

  return authServiceProvider.overrideWithValue(mockAuthService);
}

Override _setUpMockNotificationsStorage() {
  final mockNotificationsStorage = MockNotificationsStorage();

  return notificationsStorageProvider
      .overrideWithValue(mockNotificationsStorage);
}

Override _setUpMockNotificationsService() {
  final mockNotificationsService = MockNotificationsService();

  when(
    mockNotificationsService.notify(
      any,
      id: anyNamed('id'),
      notificationDetails: anyNamed('notificationDetails'),
    ),
  ).thenAnswer((_) async {});

  return notificationsServiceProvider
      .overrideWithValue(mockNotificationsService);
}

final expectedPersons = [
  Person(id: 'id', name: 'name'),
  Person(id: 'id2', name: 'name2'),
];

Override _setUpMockDatabaseService() {
  final mockPersonsNotificationsQueries = MockPersonsNotificationsQueries();
  when(
    mockPersonsNotificationsQueries.getPersonsKodasWarning(
      date: anyNamed('date'),
    ),
  ).thenAnswer((_) async => expectedPersons);
  when(
    mockPersonsNotificationsQueries.getPersonsMeetingWarning(
      date: anyNamed('date'),
    ),
  ).thenAnswer((_) async => expectedPersons);
  when(
    mockPersonsNotificationsQueries.getPersonsVisitWarning(
      date: anyNamed('date'),
    ),
  ).thenAnswer((_) async => expectedPersons);
  when(
    mockPersonsNotificationsQueries.getPersonsConfessionWarning(
      date: anyNamed('date'),
    ),
  ).thenAnswer((_) async => expectedPersons);
  when(
    mockPersonsNotificationsQueries.getBirthdayPersons(
      date: anyNamed('date'),
    ),
  ).thenAnswer((_) async => expectedPersons);

  final mockPersonsDAO = MockPersonsDAO();

  when(mockPersonsDAO.notificationsQueries)
      .thenReturn(mockPersonsNotificationsQueries);

  final mockDatabaseService = MockDatabaseService();

  when(
    mockDatabaseService.persons,
  ).thenReturn(mockPersonsDAO);

  return databaseServiceProvider.overrideWithValue(mockDatabaseService);
}
