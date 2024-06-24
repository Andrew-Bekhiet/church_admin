import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';

import 'history_property_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<DelegatingPaginatableStream<LastRecordedByInfo>>(),
  MockSpec<ViewableObjectService>(),
  MockSpec<ImageUrlCacheService>(),
])
Future<void> main() async {
  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  group('AdminUsers =>', () {
    testWidgets('Displays at most 7 users', (tester) async {
      final users =
          List.generate(10, (i) => User(uid: 'uid$i', name: 'name$i'));

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AdminUsers(users: users),
          ),
        ),
      );

      expect(find.byType(AdminUsers), findsOneWidget);
      expect(find.byType(ImageObjectWidget), findsNWidgets(7));
      expect(find.text('+4'), findsOneWidget);
    });

    testWidgets('Displays all when <= 7', (tester) async {
      final users = List.generate(5, (i) => User(uid: 'uid$i', name: 'name$i'));

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AdminUsers(users: users),
          ),
        ),
      );

      expect(find.byType(AdminUsers), findsOneWidget);
      expect(find.byType(ImageObjectWidget), findsNWidgets(5));
      expect(find.textContaining('+'), findsNothing);
    });

    testWidgets('Shows remaining in dialog', (tester) async {
      final users = List.generate(5, (i) => User(uid: 'uid$i', name: 'name$i'));

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AdminUsers(users: users),
          ),
        ),
      );

      await tester.tap(find.byType(AdminUsers));
      await tester.pumpAndSettle();

      expect(find.byType(Dialog), findsOneWidget);
      expect(
        find.byType(ViewableObjectWidget<User>, skipOffstage: false),
        findsNWidgets(5),
      );
    });
  });
}

void _setUp() {
  final overrides = [
    _setUpViewableObjectService(),
    _setUpMockImageUrlService(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpViewableObjectService() {
  final viewableObjectService = MockViewableObjectService();

  when(viewableObjectService.getDefaultIconFor<Person>(any))
      .thenReturn(Symbols.person);

  return viewableObjectServiceProvider.overrideWithValue(viewableObjectService);
}

Override _setUpMockImageUrlService() {
  return imageUrlCacheServiceProvider.overrideWithValue(
    MockImageUrlCacheService(),
  );
}
