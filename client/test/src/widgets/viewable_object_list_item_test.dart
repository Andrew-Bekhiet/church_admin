import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart'
    show PaginatableStreamBase;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'viewable_object_list_item_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<PaginatableStreamBase>(),
  MockSpec<CAViewableObjectService>(),
  MockSpec<ImageUrlCacheService>(),
])
void main() async {
  setUp(_setUp);
  tearDown(GetIt.I.reset);

  await loadAppFonts();

  testGoldens(
    'Viewable Object List Item => Goldens test',
    (tester) async {
      final item = Person(id: 'id', name: 'name');

      final selectionController = SelectionController<Person>();
      await tester.pumpWidgetBuilder(
        Center(
          child: ViewableObjectListItem<Person>(
            item: item,
            selectionController: selectionController,
          ),
        ),
        wrapper: materialAppWrapper(
          theme: CAThemingService.getDefault(
            darkTheme: false,
            greatFeastThemeOverride: false,
          ),
        ),
      );

      expect(
        find.descendant(
          of: find.byType(ViewableObjectListItem<Person>),
          matching: find.byType(ViewableObjectWidget<Person>),
        ),
        findsOneWidget,
      );
      expect(
        find.descendant(
          of: find.byType(ViewableObjectListItem<Person>),
          matching: find.byType(Checkbox),
        ),
        findsNothing,
      );

      await screenMatchesGolden(tester, 'viewable_object_list_item');

      selectionController.selectNone();
      await tester.pumpAndSettle();

      expect(
        find.descendant(
          of: find.byType(ViewableObjectListItem<Person>),
          matching: find.byType(ViewableObjectWidget<Person>),
        ),
        findsOneWidget,
      );
      expect(
        find.descendant(
          of: find.byType(ViewableObjectListItem<Person>),
          matching: find.byType(Checkbox),
        ),
        findsOneWidget,
      );

      await screenMatchesGolden(
        tester,
        'viewable_object_list_item_selection_mode',
      );

      selectionController.select(item);
      await tester.pumpAndSettle();

      expect(
        find.descendant(
          of: find.byType(ViewableObjectListItem<Person>),
          matching: find.byType(ViewableObjectWidget<Person>),
        ),
        findsOneWidget,
      );
      expect(
        find.descendant(
          of: find.byType(ViewableObjectListItem<Person>),
          matching: find.byType(Checkbox),
        ),
        findsOneWidget,
      );

      await screenMatchesGolden(
        tester,
        'viewable_object_list_item_selection_mode_selected',
      );
    },
  );

  testGoldens(
    'Viewable Object List Item => Item Builder',
    (tester) async {
      final item = Person(id: 'id', name: 'name');

      final selectionController = SelectionController<Person>();
      await tester.pumpWidgetBuilder(
        ViewableObjectListItem<Person>(
          item: item,
          selectionController: selectionController,
          itemBuilder: (context, itemParameter, config) {
            expect(itemParameter, item);
            expect(config?.selected, selectionController.isSelected(item));
            expect(
              config?.trailing,
              selectionController.isSelecting ? isNotNull : isNull,
            );

            return Text(itemParameter.name);
          },
        ),
      );

      expect(
        find.descendant(
          of: find.byType(ViewableObjectListItem<Person>),
          matching: find.text(item.name),
        ),
        findsOneWidget,
      );

      selectionController.select(item);
      await tester.pumpAndSettle();

      selectionController.deselect(item);
      await tester.pumpAndSettle();
    },
  );

  testGoldens(
    'Viewable Object List Item => Callbacks => provided both',
    (tester) async {
      final item = Person(id: 'id', name: 'name');

      int onTapCalled = 0;
      int onLongPressCalled = 0;

      final selectionController = SelectionController<Person>();
      await tester.pumpWidgetBuilder(
        ViewableObjectListItem<Person>(
          item: item,
          selectionController: selectionController,
          viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
            onTap: (p) {
              expect(p, item);
              onTapCalled++;
            },
            onLongPress: (p) {
              expect(p, item);
              onLongPressCalled++;
            },
          ),
        ),
      );

      await tester.tap(find.byType(ViewableObjectWidget<Person>));
      expect(onTapCalled, 1);

      await tester.longPress(find.byType(ViewableObjectWidget<Person>));
      expect(onLongPressCalled, 1);

      await tester.tap(find.byType(ViewableObjectWidget<Person>));
      expect(onTapCalled, 2);

      await tester.longPress(find.byType(ViewableObjectWidget<Person>));
      expect(onLongPressCalled, 2);

      await tester.tap(find.byType(ViewableObjectWidget<Person>));
      expect(onTapCalled, 3);
    },
  );

  testGoldens(
    'Viewable Object List Item => Callbacks => onTap only',
    (tester) async {
      final item = Person(id: 'id', name: 'name');

      int onTapCalled = 0;

      final selectionController = SelectionController<Person>();
      await tester.pumpWidgetBuilder(
        ViewableObjectListItem<Person>(
          item: item,
          selectionController: selectionController,
          viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
            onTap: (p) {
              expect(p, item);
              onTapCalled++;
            },
          ),
        ),
      );

      await tester.tap(find.byType(ViewableObjectWidget<Person>));
      expect(onTapCalled, 1);

      await tester.longPress(find.byType(ViewableObjectWidget<Person>));
      expect(selectionController.isSelected(item), isTrue);
      expect(selectionController.isSelecting, isTrue);

      await tester.tap(find.byType(ViewableObjectWidget<Person>));
      expect(onTapCalled, 1);
      expect(selectionController.isSelected(item), isFalse);
      expect(selectionController.isSelecting, isTrue);

      await tester.longPress(find.byType(ViewableObjectWidget<Person>));
      expect(selectionController.isSelecting, isFalse);

      await tester.tap(find.byType(ViewableObjectWidget<Person>));
      expect(onTapCalled, 2);
    },
  );

  testGoldens(
    'Viewable Object List Item => Callbacks => onLongPress only',
    (tester) async {
      final item = Person(id: 'id', name: 'name');

      int onLongPressCalled = 0;

      final selectionController = SelectionController<Person>();
      await tester.pumpWidgetBuilder(
        ViewableObjectListItem<Person>(
          item: item,
          selectionController: selectionController,
          viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
            onLongPress: (p) {
              expect(p, item);
              onLongPressCalled++;
            },
          ),
        ),
      );

      await tester.tap(find.byType(ViewableObjectWidget<Person>));
      verify(GetIt.I<CAViewableObjectService>().onTap(item)).called(1);

      await tester.longPress(find.byType(ViewableObjectWidget<Person>));
      expect(onLongPressCalled, 1);

      await tester.tap(find.byType(ViewableObjectWidget<Person>));
      verify(GetIt.I<CAViewableObjectService>().onTap(item)).called(1);

      await tester.longPress(find.byType(ViewableObjectWidget<Person>));
      expect(onLongPressCalled, 2);

      await tester.tap(find.byType(ViewableObjectWidget<Person>));
      verify(GetIt.I<CAViewableObjectService>().onTap(item)).called(1);
    },
  );
}

void _setUp() {
  _setUpMockObjectService();
  _setUpMockImageUrlService();
}

void _setUpMockObjectService() {
  final mockCAViewableObjectService = MockCAViewableObjectService();
  when(mockCAViewableObjectService.getDefaultIconFor(any))
      .thenAnswer((_) => Icons.person);

  return GetIt.I.registerSingleton<CAViewableObjectService>(
    mockCAViewableObjectService,
  );
}

void _setUpMockImageUrlService() {
  GetIt.I.registerSingleton<ImageUrlCacheService>(
    MockImageUrlCacheService(),
  );
}
