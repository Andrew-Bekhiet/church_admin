import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../utils.dart';

class MockAuthBloc extends Mock implements AuthBloc {}

class MockDatabaseService extends Mock implements DatabaseService {}

class MockServicesDAO extends Mock implements ServicesDAO {}

class MockUserPreferencesService extends Mock
    implements UserPreferencesService {}

class MockViewableObjectService extends Mock implements ViewableObjectService {}

void main() {
  setUp(() {
    final authBloc = MockAuthBloc();
    when(() => authBloc.currentUserData).thenReturn(
      const User(
        uid: 'user-id',
        name: 'مستخدم',
        permissions: PermissionsSet.fromSet({UserPermission.writeAllData}),
      ),
    );

    final servicesDAO = MockServicesDAO();
    registerFallbackValue(const Service(id: 'fallback', name: 'fallback'));
    when(
      () => servicesDAO.updateObject(
        oldObject: any(named: 'oldObject'),
        newObject: any(named: 'newObject'),
      ),
    ).thenAnswer(
      (invocation) async => invocation.namedArguments[#newObject] as Service,
    );

    final databaseService = MockDatabaseService();
    when(() => databaseService.services).thenReturn(servicesDAO);

    final preferences = MockUserPreferencesService();
    when(() => preferences.darkTheme).thenReturn(false);
    when(() => preferences.greatFeastTheme).thenReturn(false);

    final viewableObjects = MockViewableObjectService();
    when(
      () => viewableObjects.getDefaultIconFor<Service>(any()),
    ).thenReturn(Symbols.church);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      databaseServiceProvider.overrideWithValue(databaseService),
      userPreferencesServiceProvider.overrideWithValue(preferences),
      viewableObjectServiceProvider.overrideWithValue(viewableObjects),
    ]);
  });

  tearDown(defaultTearDown);

  testWidgets(
    'editing a service without a study year range saves without adding one',
    (
      tester,
    ) async {
      const service = Service(id: 'service-id', name: 'خدمة قديمة');

      await tester.pumpWidget(
        materialAppWithThemeAndLocale()(
          Builder(
            builder: (context) => TextButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => const EditService(service: service),
                ),
              ),
              child: const Text('فتح الخدمة'),
            ),
          ),
        ),
      );

      await tester.tap(find.text('فتح الخدمة'));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      expect(find.byType(EditService), findsOneWidget);
      await tester.drag(find.byType(CustomScrollView), const Offset(0, -600));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextFormField).first, 'خدمة جديدة');
      await tester.tap(find.text('حفظ'));
      await tester.pumpAndSettle();

      expect(find.byType(EditService), findsNothing);
      expect(find.text('فتح الخدمة'), findsOneWidget);
    },
  );
}
