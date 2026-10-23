import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/mock_auth_bloc.dart';
import '../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../fakes/mock_user_preferences_service.dart';
import '../../../../fakes/mock_viewable_object_service.dart';
import '../../../../material_ui_test_app.dart';
import '../../../../utils.dart';

typedef _TabContentBuilder = Widget Function(
  BuildContext context,
  ViewableObjectListController<Person> objectsController,
);

void main() {
  final persons = List.generate(
    40,
    (i) => Person(id: 'person-$i', name: 'مخدوم $i'),
  );

  final tabContents = <({String description, _TabContentBuilder builder})>[
    (
      description:
          'an ordered list tab (area, street, family, class, group, '
          'store, and the service groups and persons tabs)',
      builder: (context, objectsController) {
        final arrangementController = ListArrangementController(
          type: AdvancedQueriesMetadata().person,
          defaultOrderBy: () => [OrderBy(field: PersonFields().name)],
        );
        addTearDown(arrangementController.dispose);

        return OrderedViewableObjectList(
          arrangementController: arrangementController,
          objectsController: objectsController,
        );
      },
    ),
    (
      description: 'the service classes grid tab',
      builder: (context, objectsController) => ViewableObjectList(
        type: ViewableObjectListType.grid3,
        scrollController: PrimaryScrollController.maybeOf(context),
        nestedScrollOverlapHandle:
            NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        objectsController: objectsController,
      ),
    ),
  ];

  setUp(_setUp);
  tearDown(defaultTearDown);

  for (final tabContent in tabContents) {
    testWidgets(
      'with the header collapsed, the first row of ${tabContent.description} '
      'sits fully below the pinned tabs and takes taps',
      (tester) async {
        final objectsController = ViewableObjectListController<Person>(
          objectsPaginatableStream: PaginatableStream.simple(
            factory: (_) => Stream.value(
              PaginatableStreamResponse(data: persons),
            ),
          ),
        );

        await _pumpViewObjectDetails(
          tester,
          tabContentBuilder: (context) =>
              tabContent.builder(context, objectsController),
        );
        await _collapseHeader(tester);

        final firstRow = find.byWidgetPredicate(
          (widget) =>
              widget is ViewableObjectListItem && widget.item == persons.first,
        );

        expect(
          Directionality.of(tester.element(firstRow)),
          TextDirection.rtl,
        );
        expect(find.byType(ChipTabBar).hitTestable(), findsOneWidget);
        expect(
          tester.getRect(firstRow).top,
          greaterThanOrEqualTo(tester.getRect(find.byType(ChipTabBar)).bottom),
        );
        expect(firstRow.hitTestable(), findsOneWidget);

        await tester.pumpWidget(const SizedBox());
        unawaited(objectsController.dispose());
      },
    );
  }
}

Future<void> _pumpViewObjectDetails(
  WidgetTester tester, {
  required WidgetBuilder tabContentBuilder,
}) async {
  const area = Area(id: 'area', name: 'منطقة', color: Colors.purple);
  final objectStream = StreamController<Area?>()..add(area);
  addTearDown(objectStream.close);

  tester.view
    ..physicalSize = const Size(1080, 1920)
    ..devicePixelRatio = 1;
  addTearDown(tester.view.reset);

  await tester.pumpWidget(
    MaterialUiTestApp.withThemeAndLocale(
      child: ViewObjectDetails<Area>(
        object: area,
        objectId: area.id,
        objectStream: objectStream.stream,
        notFoundBuilder: (context) => const SizedBox(),
        editButtonBuilder: (context, area) => const SizedBox(),
        detailsBuilder: (context, area) =>
            const SliverToBoxAdapter(child: SizedBox(height: 70)),
        sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
          tabs: [(label: 'المخدومين', icon: Symbols.person)],
        ),
        childrenTypes: const [Person],
        tabsContentBuilders: {Person: tabContentBuilder},
      ),
    ),
  );
  await tester.pump();
  await tester.pump(const Duration(seconds: 1));
}

Future<void> _collapseHeader(WidgetTester tester) async {
  final outerController = tester
      .state<NestedScrollViewState>(find.byType(NestedScrollView))
      .outerController;
  outerController.jumpTo(outerController.position.maxScrollExtent);
  await tester.pump();
  await tester.pump(ViewObjectDetails.snapDuration * 2);
}

void _setUp() {
  registerFallbackValue(
    OrderByPreferenceKey(type: AdvancedQueriesMetadata().person),
  );
  registerFallbackValue(<OrderBy>[]);
  registerFallbackValue(
    const ObjectPhotoInfo(Enum_PhotoSubject.PERSONS, 'fallback'),
  );

  final preferences = MockUserPreferencesService();
  when(() => preferences.darkTheme).thenReturn(false);
  when(() => preferences.greatFeastTheme).thenReturn(false);
  when(() => preferences.getLastOrderByFor(any())).thenReturn(null);
  when(() => preferences.getLastSecondLineFieldFor(any())).thenReturn(null);
  when(
    () => preferences.setLastOrderByFor(any(), any()),
  ).thenAnswer((_) async {});

  final imageUrls = MockImageUrlCacheService();
  when(() => imageUrls.getImageUrl(any()))
      .thenAnswer((_) => Completer<String>().future);

  final viewableObjects = MockViewableObjectService();
  when(
    () => viewableObjects.getDefaultIconFor<Person>(any()),
  ).thenReturn(Symbols.person);
  when(
    () => viewableObjects.getDefaultIconFor<IImage>(any()),
  ).thenReturn(Symbols.person);

  final authBloc = MockAuthBloc();
  when(() => authBloc.currentUserData).thenReturn(
    const User(
      uid: 'user',
      name: 'مستخدم',
      permissions: PermissionsSet.fromSet({UserPermission.writeAllData}),
    ),
  );

  initGlobalProviderContainer([
    userPreferencesServiceProvider.overrideWithValue(preferences),
    imageUrlCacheServiceProvider.overrideWithValue(imageUrls),
    viewableObjectServiceProvider.overrideWithValue(viewableObjects),
    authBlocProvider.overrideWithValue(authBloc),
  ]);
}
