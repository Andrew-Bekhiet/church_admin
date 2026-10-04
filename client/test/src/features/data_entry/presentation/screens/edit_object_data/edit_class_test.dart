import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/study_years_dao.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../utils.dart';

class MockAuthBloc extends Mock implements AuthBloc {}

class MockDatabaseService extends Mock implements DatabaseService {}

class MockMetadataDAO extends Mock implements MetadataDAO {}

class MockImageUrlCacheService extends Mock implements ImageUrlCacheService {}

class MockUserPreferencesService extends Mock
    implements UserPreferencesService {}

class MockViewableObjectService extends Mock implements ViewableObjectService {}

class InMemoryClassesDAO extends Fake implements ClassesDAO {
  final savedClasses = <Class>[];

  @override
  Future<Class> createObject({required Class newObject}) async {
    savedClasses.add(newObject);

    return newObject;
  }

  @override
  Future<Class?> updateObject({
    required Class newObject,
    required Class oldObject,
  }) async {
    savedClasses.add(newObject);

    return newObject;
  }
}

class InMemoryStudyYearsDAO extends Fake implements StudyYearsDAO {
  final List<StudyYear> studyYears;

  @override
  PaginatableStreamBase<StudyYear> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    int? overrideTotalLimit,
  }) => PaginatableStream.simple(
    factory: (_) => Stream.value(
      PaginatableStreamResponse(
        data: studyYears,
        totalCount: studyYears.length,
      ),
    ),
  );

  InMemoryStudyYearsDAO(this.studyYears);
}

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

  late InMemoryClassesDAO classes;

  Class class$({required StudyYear from, required StudyYear? to}) => Class(
    id: 'class-id',
    name: 'فصل',
    service: primary,
    serviceId: primary.id,
    studyYear: from,
    serviceStudyYear: from.order,
    studyYearTo: to,
    serviceStudyYearTo: to?.order,
  );

  (int?, int?) studyYearsOf(Class class$) =>
      (class$.studyYearFromOrder, class$.studyYearToOrder);

  Future<void> openEditor(WidgetTester tester, EditClass editor) async {
    await tester.pumpWidget(materialAppWithThemeAndLocale()(editor));
  }

  Future<void> scrollTo(WidgetTester tester, Key key) async {
    await tester.scrollUntilVisible(
      find.byKey(key),
      100,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.ensureVisible(find.byKey(key));
    await tester.pumpAndSettle();
  }

  Finder studyYearsError(String message) => find.descendant(
    of: find.byKey(EditClassKeys.studyYears),
    matching: find.text(message),
  );

  Finder studyYearOption(StudyYear studyYear) => find.byWidgetPredicate(
    (widget) => switch (widget) {
      ViewableObjectWidget(object: StudyYear(:final id)) => id == studyYear.id,
      _ => false,
    },
  );

  Future<void> save(WidgetTester tester) async {
    await tester.tap(find.byKey(EditObjectDataKeys.saveButton));
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

    classes = InMemoryClassesDAO();
    final metadata = MockMetadataDAO();
    when(() => metadata.studyYears).thenReturn(
      InMemoryStudyYearsDAO([first, third, fourth, sixth]),
    );
    final databaseService = MockDatabaseService();
    when(() => databaseService.classes).thenReturn(classes);
    when(() => databaseService.metadata).thenReturn(metadata);

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

  testWidgets('renaming a class that spans study years keeps its range', (
    tester,
  ) async {
    await openEditor(
      tester,
      EditClass(
        class$: class$(from: third, to: fourth),
      ),
    );

    await scrollTo(tester, EditClassKeys.name);
    await tester.enterText(find.byKey(EditClassKeys.name), 'فصل جديد');
    await save(tester);

    final saved = classes.savedClasses.single;
    expect(saved.name, 'فصل جديد');
    expect(studyYearsOf(saved), (3, 4));
  });

  testWidgets('widening a single-year class saves its new study year range', (
    tester,
  ) async {
    await openEditor(
      tester,
      EditClass(
        class$: class$(from: third, to: third),
      ),
    );

    await scrollTo(tester, StudyYearRangeFieldKeys.to);
    await tester.tap(find.byKey(StudyYearRangeFieldKeys.to));
    await tester.pumpAndSettle();
    await tester.tap(studyYearOption(fourth));
    await tester.pumpAndSettle();
    await save(tester);

    expect(studyYearsOf(classes.savedClasses.single), (3, 4));
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

    await scrollTo(tester, EditClassKeys.studyYears);
    await save(tester);

    expect(
      studyYearsError('السنة الدراسية الأولى لا يمكن أن تكون أكبر من الثانية'),
      findsOneWidget,
    );
    expect(classes.savedClasses, isEmpty);
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

    await scrollTo(tester, EditClassKeys.studyYears);
    await save(tester);

    expect(
      studyYearsError('السنة الدراسية يجب ان تكون بين أولى وسادسة'),
      findsOneWidget,
    );
    expect(classes.savedClasses, isEmpty);
  });

  testWidgets('a new class without its study years is not saved', (
    tester,
  ) async {
    await openEditor(
      tester,
      EditClass(class$: null, withService: primary),
    );

    await scrollTo(tester, EditClassKeys.studyYears);
    await save(tester);

    expect(
      studyYearsError('برجاء ادخال السنتين الدراسيتين'),
      findsOneWidget,
    );
    expect(classes.savedClasses, isEmpty);
  });
}
