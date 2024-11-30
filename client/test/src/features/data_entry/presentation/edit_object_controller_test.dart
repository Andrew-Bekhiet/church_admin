import 'dart:async';
import 'dart:typed_data';

import 'package:church_admin/church_admin.dart';
import 'package:cross_file/cross_file.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import './edit_object_controller_test.mocks.dart';

@GenerateNiceMocks([MockSpec<FunctionsService>(), MockSpec<LoggingService>()])
void main() {
  group(
    'EditObjectController tests =>',
    () {
      group(
        'getters =>',
        () {
          test(
            'hasChanged',
            () {
              final unit = createEditObjectController(
                initialObject: Person(id: 'id', name: 'name'),
                onUpdate: (_, __) async => null,
                onDelete: (_) async {},
              );
              expect(unit.hasChanged, isFalse);

              unit.newObject = Person(id: 'id', name: 'name2');
              expect(unit.hasChanged, isTrue);

              final unit2 = createEditObjectController();
              expect(unit2.hasChanged, isTrue);

              unit2.newObject = Person(id: 'id', name: 'name2');
              expect(unit2.hasChanged, isTrue);
            },
          );

          test(
            'isCreate',
            () {
              final unit = createEditObjectController();
              expect(unit.isCreate, isTrue);

              final unit2 = createEditObjectController(
                initialObject: Person(id: 'id', name: 'name'),
                onUpdate: (_, __) async => null,
                onDelete: (_) async {},
              );
              expect(unit2.isCreate, isFalse);
            },
          );

          test(
            'isUpdate',
            () {
              final unit = createEditObjectController();
              expect(unit.isUpdate, isFalse);

              final unit2 = createEditObjectController(
                initialObject: Person(id: 'id', name: 'name'),
                onUpdate: (_, __) async => null,
                onDelete: (_) async {},
              );
              expect(unit2.isUpdate, isTrue);
            },
          );
        },
      );
      group(
        'confirmExit =>',
        () {
          testWidgets(
            'Shows dialog',
            (tester) async {
              final unit = createEditObjectController();

              await tester.pumpWidgetBuilder(
                const Scaffold(
                  body: Text('Route 1'),
                ),
                wrapper: materialAppWrapper(),
              );

              unawaited(
                tester.firstState<NavigatorState>(find.byType(Navigator)).push(
                      MaterialPageRoute(
                        builder: (context) => Form(
                          canPop: false,
                          onPopInvokedWithResult: (didPop, result) async {
                            if (didPop) return;

                            final navigator = Navigator.of(context);
                            if (await unit.confirmExit(context)) {
                              navigator.pop(result);
                            }
                          },
                          key: unit.formKey,
                          child: Scaffold(
                            appBar: AppBar(),
                            body: const Text('Route 2'),
                          ),
                        ),
                      ),
                    ),
              );
              await tester.pumpAndSettle();

              await tester.tap(find.byType(BackButton));

              await tester.pumpAndSettle();

              expect(find.byType(AlertDialog), findsOneWidget);
            },
          );

          testWidgets(
            'Dialog elements',
            (tester) async {
              final unit = createEditObjectController();

              await tester.pumpWidgetBuilder(
                const Scaffold(
                  body: Text('Route 1'),
                ),
                wrapper: materialAppWrapper(),
              );

              unawaited(
                tester.firstState<NavigatorState>(find.byType(Navigator)).push(
                      MaterialPageRoute(
                        builder: (context) => Form(
                          canPop: false,
                          onPopInvokedWithResult: (didPop, result) async {
                            if (didPop) return;

                            final navigator = Navigator.of(context);
                            if (await unit.confirmExit(context)) {
                              navigator.pop(result);
                            }
                          },
                          key: unit.formKey,
                          child: Scaffold(
                            appBar: AppBar(),
                            body: const Text('Route 2'),
                          ),
                        ),
                      ),
                    ),
              );

              await tester.pumpAndSettle();

              await tester.tap(find.byType(BackButton));
              await tester.pumpAndSettle();

              expect(find.byType(AlertDialog), findsOneWidget);
              expect(find.text('البقاء'), findsOneWidget);
              expect(find.text('تجاهل'), findsOneWidget);

              await tester.tap(find.text('البقاء'));
              await tester.pumpAndSettle();

              expect(find.byType(AlertDialog), findsNothing);
              expect(find.text('Route 2'), findsOneWidget);

              await tester.tap(find.byType(BackButton));
              await tester.pumpAndSettle();

              await tester.tap(find.text('تجاهل'));
              await tester.pumpAndSettle();

              expect(find.byType(AlertDialog), findsNothing);
              expect(find.text('Route 2'), findsNothing);
              expect(find.text('Route 1'), findsOneWidget);
            },
          );
        },
      );

      group(
        'delete =>',
        () {
          testWidgets(
            'throws on uncreated object',
            (tester) async {
              final unit = createEditObjectController();

              await tester.pumpWidgetBuilder(
                const Scaffold(body: Text('Route 1')),
                wrapper: materialAppWrapper(),
              );

              expect(
                () => unit
                    .delete(tester.firstState(find.byType(Scaffold)).context),
                throwsA(isA<Exception>()),
              );
            },
          );

          testWidgets(
            'shows confirmation dialog',
            (tester) async {
              bool deleted = false;

              final unit = createEditObjectController(
                initialObject: Person(id: 'id', name: 'name'),
                onDelete: (_) async => deleted = true,
                onUpdate: (_, __) async => null,
              );

              await tester.pumpWidgetBuilder(
                const Scaffold(
                  body: Placeholder(),
                ),
                wrapper: materialAppWrapper(),
              );
              unawaited(
                tester.firstState<NavigatorState>(find.byType(Navigator)).push(
                      MaterialPageRoute(
                        builder: (context) => Scaffold(
                          body: ElevatedButton(
                            onPressed: () => unit.delete(context),
                            child: const Text(''),
                          ),
                        ),
                      ),
                    ),
              );
              await tester.pumpAndSettle();

              await tester.tap(find.byType(ElevatedButton));

              await tester.pumpAndSettle();

              expect(find.byType(AlertDialog), findsOneWidget);
              expect(find.text('هل تريد حذف name؟'), findsOneWidget);
              expect(find.text('لا'), findsOneWidget);
              expect(find.text('نعم'), findsOneWidget);

              await tester.tap(find.text('لا'));
              await tester.pumpAndSettle();

              expect(find.byType(AlertDialog), findsNothing);
              expect(deleted, isFalse);

              await tester.tap(find.byType(ElevatedButton));

              await tester.pumpAndSettle();

              await tester.tap(find.text('نعم'));
              await tester.pumpAndSettle();

              expect(find.byType(AlertDialog), findsNothing);
              expect(deleted, isTrue);
            },
          );
        },
      );

      group(
        'save =>',
        () {
          group(
            'saveLock =>',
            () {
              testWidgets(
                'normal',
                (tester) async {
                  final completer = Completer<Person?>();

                  int saveCallTimes = 0;

                  final unit = createEditObjectController(
                    initialObject: Person(id: 'id', name: 'name'),
                    onUpdate: (_, __) async {
                      saveCallTimes++;

                      return completer.future;
                    },
                    onDelete: (_) async {},
                  );

                  await tester.pumpWidgetBuilder(
                    Scaffold(
                      body: Form(key: unit.formKey, child: const Placeholder()),
                    ),
                    wrapper: materialAppWrapper(),
                  );

                  unawaited(
                    Future.wait([
                      unit.save(
                        tester.firstState(find.byType(Scaffold)).context,
                      ),
                      unit.save(
                        tester.firstState(find.byType(Scaffold)).context,
                      ),
                      unit.save(
                        tester.firstState(find.byType(Scaffold)).context,
                      ),
                      unit.save(
                        tester.firstState(find.byType(Scaffold)).context,
                      ),
                    ]),
                  );

                  completer.complete(null);
                  await tester.pumpAndSettle();

                  expect(saveCallTimes, 1);
                },
              );

              testWidgets(
                'error',
                (tester) async {
                  initGlobalProviderContainer([
                    loggingServiceProvider
                        .overrideWithValue(MockLoggingService()),
                  ]);

                  final completer = Completer<Person?>();

                  int saveCallTimes = 0;

                  final unit = createEditObjectController(
                    initialObject: Person(id: 'id', name: 'name'),
                    onUpdate: (_, __) async {
                      saveCallTimes++;

                      return completer.future;
                    },
                    onDelete: (_) async {},
                  );

                  await tester.pumpWidgetBuilder(
                    Scaffold(
                      body: Form(key: unit.formKey, child: const Placeholder()),
                    ),
                    wrapper: materialAppWrapper(),
                  );

                  unawaited(
                    Future.wait([
                      unit.save(
                        tester.firstState(find.byType(Scaffold)).context,
                      ),
                      unit.save(
                        tester.firstState(find.byType(Scaffold)).context,
                      ),
                      unit.save(
                        tester.firstState(find.byType(Scaffold)).context,
                      ),
                      unit.save(
                        tester.firstState(find.byType(Scaffold)).context,
                      ),
                    ]),
                  );

                  completer.completeError(Exception('error'));
                  await tester.pumpAndSettle();

                  expect(saveCallTimes, 1);

                  unawaited(
                    unit.save(
                      tester.firstState(find.byType(Scaffold)).context,
                    ),
                  );

                  expect(saveCallTimes, 2);
                },
              );
            },
          );

          testWidgets(
            'validation and saving form',
            (tester) async {
              bool validated = false;
              bool saved = false;

              final unit = createEditObjectController(
                initialObject: Person(id: 'id', name: 'name'),
                onUpdate: (_, __) async => null,
                onDelete: (_) async {},
              );

              await tester.pumpWidgetBuilder(
                Scaffold(
                  body: Form(
                    key: unit.formKey,
                    child: FormField(
                      validator: (_) {
                        validated = true;
                        return;
                      },
                      onSaved: (_) {
                        saved = true;
                      },
                      builder: (context) => const Placeholder(),
                    ),
                  ),
                ),
                wrapper: materialAppWrapper(),
              );

              unawaited(
                unit.save(tester.firstState(find.byType(Scaffold)).context),
              );

              expect(validated, isTrue);
              expect(saved, isTrue);
            },
          );

          testWidgets(
            'calls onCreate',
            (tester) async {
              bool onCreateCalled = false;

              final unit = createEditObjectController(
                onCreate: (person) async {
                  onCreateCalled = true;
                  return person;
                },
              );

              await tester.pumpWidgetBuilder(
                Scaffold(
                  body: Form(key: unit.formKey, child: const Placeholder()),
                ),
                wrapper: materialAppWrapper(),
              );

              unawaited(
                unit.save(tester.firstState(find.byType(Scaffold)).context),
              );

              expect(onCreateCalled, isTrue);
            },
          );

          testWidgets(
            'calls onUpdate',
            (tester) async {
              bool onUpdateCalled = false;
              bool onCreateCalled = false;
              bool onDeleteCalled = false;

              final unit = createEditObjectController(
                initialObject: Person(id: 'id', name: 'name_old'),
                onCreate: (person) async {
                  onCreateCalled = true;
                  return person;
                },
                onDelete: (_) async {
                  onDeleteCalled = true;
                },
                onUpdate: (old, _new) async {
                  onUpdateCalled = true;
                  return _new;
                },
              );

              await tester.pumpWidgetBuilder(
                Scaffold(
                  body: Form(key: unit.formKey, child: const Placeholder()),
                ),
                wrapper: materialAppWrapper(),
              );

              unawaited(
                unit.save(tester.firstState(find.byType(Scaffold)).context),
              );

              expect(onUpdateCalled, isTrue);
              expect(onCreateCalled, isFalse);
              expect(onDeleteCalled, isFalse);
            },
          );

          group(
            'photo field =>',
            () {
              setUp(_setUpPhotoFieldTests);
              tearDown(resetGlobalProviderContainer);

              testWidgets(
                'delete photo',
                (tester) async {
                  final unit = createEditObjectController(
                    initialObject: Person(
                      id: 'id',
                      name: 'name_old',
                      photoUpdatedAt: DateTime.now(),
                    ),
                    onCreate: (person) async {
                      return person;
                    },
                    onDelete: (_) async {},
                    onUpdate: (old, _new) async {
                      return _new;
                    },
                  );

                  await tester.pumpWidgetBuilder(
                    Scaffold(
                      body: Form(key: unit.formKey, child: const Placeholder()),
                    ),
                    wrapper: materialAppWrapper(),
                  );

                  unit.photoFieldState = PhotoFieldState(
                    deletePhoto: true,
                  );

                  unawaited(
                    unit.save(tester.firstState(find.byType(Scaffold)).context),
                  );

                  await tester.pumpAndSettle();

                  verify(FunctionsService.I.deletePhoto('persons', 'id'));
                },
              );

              testWidgets(
                'change photo',
                (tester) async {
                  final unit = createEditObjectController(
                    initialObject: Person(
                      id: 'id',
                      name: 'name_old',
                      photoUpdatedAt: DateTime.now(),
                    ),
                    onCreate: (person) async {
                      return person;
                    },
                    onDelete: (_) async {},
                    onUpdate: (old, _new) async {
                      return _new;
                    },
                  );

                  await tester.pumpWidgetBuilder(
                    Scaffold(
                      body: Form(key: unit.formKey, child: const Placeholder()),
                    ),
                    wrapper: materialAppWrapper(),
                  );

                  final mockXFile = MockXFile(
                    'path/to/file.jpg',
                    length: 1,
                  );

                  unit.photoFieldState = PhotoFieldState(
                    deletePhoto: false,
                    newPhoto: mockXFile,
                  );

                  unawaited(
                    unit.save(tester.firstState(find.byType(Scaffold)).context),
                  );

                  await tester.pumpAndSettle();

                  verify(
                    (FunctionsService.I as MockFunctionsService).uploadPhoto(
                      url: url,
                      fileStream: anyNamed('fileStream'),
                      contentType: 'image/jpeg',
                      fileLength: 1,
                      onSendProgress: anyNamed('onSendProgress'),
                    ),
                  );
                },
              );
            },
          );
        },
      );
    },
  );
}

EditObjectController<Person> createEditObjectController({
  Person? initialObject,
  Future<void> Function(Person)? onDelete,
  Future<Person> Function(Person)? onCreate,
  Future<Person?> Function(Person, Person)? onUpdate,
}) {
  return EditObjectController<Person>(
    initialObject: initialObject,
    newObject: Person(id: 'id', name: 'name'),
    onCreate: onCreate ?? (object) async => object,
    toJson: (object) => object.toJson(),
    onDelete: onDelete,
    onUpdate: onUpdate,
  );
}

const url = 'https://example.com/id.jpg';
void _setUpPhotoFieldTests() {
  final mockFunctionsService = MockFunctionsService();

  when(mockFunctionsService.deletePhoto('persons', 'id'))
      .thenAnswer((_) async {});
  when(
    mockFunctionsService.getUploadUrl(
      'persons',
      'id',
      contentType: anyNamed('contentType'),
    ),
  ).thenAnswer((_) async => url);
  when(
    mockFunctionsService.uploadPhoto(
      url: url,
      onSendProgress: anyNamed('onSendProgress'),
      fileStream: anyNamed('fileStream'),
      contentType: anyNamed('contentType'),
      fileLength: anyNamed('fileLength'),
    ),
  ).thenAnswer((_) async => Response(requestOptions: RequestOptions()));

  initGlobalProviderContainer(
    [functionsServiceProvider.overrideWithValue(mockFunctionsService)],
  );
}

class MockXFile extends XFile {
  MockXFile(
    super.path, {
    super.mimeType,
    super.name,
    super.length,
    super.bytes,
    super.lastModified,
  });

  @override
  Stream<Uint8List> openRead([int? start, int? end]) =>
      Stream.fromIterable([Uint8List(1)]);

  @override
  Future<int> length() async => 1;
}
