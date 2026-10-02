import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../utils.dart';

class MockAuthBloc extends Mock implements AuthBloc {}

class MockDatabaseService extends Mock implements DatabaseService {}

class MockImageUrlCacheService extends Mock implements ImageUrlCacheService {}

class MockClassesDAO extends Mock implements ClassesDAO {}

class MockUserPreferencesService extends Mock
    implements UserPreferencesService {}

class MockViewableObjectService extends Mock implements ViewableObjectService {}

void main() {
  final first = StudyYear(order: 1, name: 'أولى');
  final third = StudyYear(order: 3, name: 'ثالثة');
  final fourth = StudyYear(order: 4, name: 'رابعة');
  final sixth = StudyYear(order: 6, name: 'سادسة');
  final seventh = StudyYear(order: 7, name: 'سابعة');

  final primary = Service(
    id: 'service-id',
    name: 'ابتدائي',
    studyYearFrom: first,
    studyYearTo: sixth,
  );

  Class class$({required StudyYear from, StudyYear? to}) => Class(
    id: 'class-id',
    name: 'فصل',
    service: primary,
    serviceId: primary.id,
    studyYear: from,
    serviceStudyYear: from.order,
    studyYearTo: to ?? from,
    serviceStudyYearTo: (to ?? from).order,
  );

  Future<void> openEditor(WidgetTester tester, EditClass editor) async {
    await tester.pumpWidget(
      materialAppWithThemeAndLocale()(
        Builder(
          builder: (context) => TextButton(
            onPressed: () => Navigator.of(
              context,
            ).push(MaterialPageRoute<void>(builder: (_) => editor)),
            child: const Text('فتح الفصل'),
          ),
        ),
      ),
    );

    await tester.tap(find.text('فتح الفصل'));
    await tester.pumpAndSettle();
    await tester.drag(find.byType(CustomScrollView), const Offset(0, -600));
    await tester.pumpAndSettle();
  }

  Future<void> save(WidgetTester tester) async {
    await tester.tap(find.text('حفظ'));
    await tester.pumpAndSettle();
  }

  setUp(() {
    final authBloc = MockAuthBloc();
    when(() => authBloc.currentUserData).thenReturn(
      const User(
        uid: 'user-id',
        name: 'مستخدم',
        permissions: PermissionsSet.fromSet({UserPermission.writeAllData}),
      ),
    );

    final classesDAO = MockClassesDAO();
    registerFallbackValue(const Class(id: 'fallback', name: 'fallback'));
    when(
      () => classesDAO.updateObject(
        oldObject: any(named: 'oldObject'),
        newObject: any(named: 'newObject'),
      ),
    ).thenAnswer(
      (invocation) async => invocation.namedArguments[#newObject] as Class,
    );

    final databaseService = MockDatabaseService();
    when(() => databaseService.classes).thenReturn(classesDAO);

    registerFallbackValue(
      const FunctionsObjectImageInfo('services', 'fallback'),
    );
    final imageUrls = MockImageUrlCacheService();
    when(
      () => imageUrls.getImageUrl(any()),
    ).thenAnswer((_) => Completer<String>().future);

    final preferences = MockUserPreferencesService();
    when(() => preferences.darkTheme).thenReturn(false);
    when(() => preferences.greatFeastTheme).thenReturn(false);

    final viewableObjects = MockViewableObjectService();
    when(
      () => viewableObjects.getDefaultIconFor<IImage>(any()),
    ).thenReturn(Symbols.church);
    when(
      () => viewableObjects.getDefaultIconFor<Class>(any()),
    ).thenReturn(Symbols.groups);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      databaseServiceProvider.overrideWithValue(databaseService),
      imageUrlCacheServiceProvider.overrideWithValue(imageUrls),
      userPreferencesServiceProvider.overrideWithValue(preferences),
      viewableObjectServiceProvider.overrideWithValue(viewableObjects),
    ]);
  });

  tearDown(defaultTearDown);

  testWidgets('a renamed single-year class saves and closes the editor', (
    tester,
  ) async {
    await openEditor(tester, EditClass(class$: class$(from: third)));

    await tester.enterText(find.byType(TextFormField).first, 'فصل جديد');
    await save(tester);

    expect(find.byType(EditClass), findsNothing);
  });

  testWidgets('a class whose study years run backwards is not saved', (
    tester,
  ) async {
    await openEditor(
      tester,
      EditClass(
        class$: class$(from: fourth, to: third),
      ),
    );

    await save(tester);

    expect(
      find.text('السنة الدراسية الأولى لا يمكن أن تكون أكبر من الثانية'),
      findsOneWidget,
    );
  });

  testWidgets('a class reaching past its service study years is not saved', (
    tester,
  ) async {
    await openEditor(
      tester,
      EditClass(
        class$: class$(from: sixth, to: seventh),
      ),
    );

    await save(tester);

    expect(
      find.text('السنة الدراسية يجب ان تكون بين أولى وسادسة'),
      findsOneWidget,
    );
  });

  testWidgets('a new class without its study years is not saved', (
    tester,
  ) async {
    await openEditor(
      tester,
      EditClass(class$: null, withService: primary),
    );

    await save(tester);

    expect(find.text('برجاء ادخال السنتين الدراسيتين'), findsOneWidget);
  });
}
