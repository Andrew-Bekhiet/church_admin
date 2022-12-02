import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_cropper_platform_interface/image_cropper_platform_interface.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import './image_picker_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<PermissionHandlerPlatform>(
    as: #PermissionHandlerPlatform_,
  ),
  MockSpec<ImagePickerPlatform>(
    as: #ImagePickerPlatform_,
  ),
  MockSpec<ImageCropperPlatform>(
    as: #ImageCropperPlatform_,
  ),
])
void main() {
  setUp(_setUp);
  tearDown(GetIt.I.reset);

  group(
    'ImagePickerService => showSourceSheet =>',
    () {
      testWidgets(
        'Key elements',
        (tester) async {
          final capturedContext = await _captureBuildContext(tester);

          final unit = ImagePickerService();

          expect(
            unit.showSourceSheet(context: capturedContext),
            completion(null),
          );

          await tester.pumpAndSettle();

          expect(
            find.descendant(
              of: find.byType(InkWell),
              matching: find.byIcon(Icons.camera),
            ),
            findsOneWidget,
          );
          expect(
            find.descendant(
              of: find.byType(InkWell),
              matching: find.byIcon(Icons.photo_library),
            ),
            findsOneWidget,
          );
          expect(
            find.descendant(
              of: find.byType(IconButton),
              matching: find.byIcon(Icons.delete),
            ),
            findsOneWidget,
          );

          Navigator.of(capturedContext).pop();

          expect(
            unit.showSourceSheet(context: capturedContext, canDelete: false),
            completion(null),
          );

          await tester.pumpAndSettle();

          expect(
            find.descendant(
              of: find.byType(InkWell),
              matching: find.byIcon(Icons.camera),
            ),
            findsOneWidget,
          );
          expect(
            find.descendant(
              of: find.byType(InkWell),
              matching: find.byIcon(Icons.photo_library),
            ),
            findsOneWidget,
          );
          expect(
            find.descendant(
              of: find.byType(IconButton),
              matching: find.byIcon(Icons.delete),
            ),
            findsNothing,
          );

          Navigator.of(capturedContext).pop();
        },
      );

      testWidgets(
        'From Camera',
        (tester) async {
          final capturedContext = await _captureBuildContext(tester);

          final unit = ImagePickerService();

          expect(
            unit.showSourceSheet(context: capturedContext),
            completion(ImageSource.camera),
          );

          await tester.pumpAndSettle();

          await tester.tap(
            find.descendant(
              of: find.byType(InkWell),
              matching: find.byIcon(Icons.camera),
            ),
          );
        },
      );

      testWidgets(
        'From Gallery',
        (tester) async {
          final capturedContext = await _captureBuildContext(tester);

          final unit = ImagePickerService();

          expect(
            unit.showSourceSheet(context: capturedContext),
            completion(ImageSource.gallery),
          );

          await tester.pumpAndSettle();

          await tester.tap(
            find.descendant(
              of: find.byType(InkWell),
              matching: find.byIcon(Icons.photo_library),
            ),
          );
        },
      );

      group(
        'Delete =>',
        () {
          testWidgets(
            'Key elements',
            (tester) async {
              final capturedContext = await _captureBuildContext(tester);

              final unit = ImagePickerService();

              unawaited(unit.showSourceSheet(context: capturedContext));

              await tester.pumpAndSettle();

              await tester.tap(
                find.descendant(
                  of: find.byType(IconButton),
                  matching: find.byIcon(Icons.delete),
                ),
              );
              await tester.pumpAndSettle();

              expect(
                find.descendant(
                  of: find.byType(Dialog),
                  matching: find.text('هل تريد حذف الصورة؟'),
                ),
                findsOneWidget,
              );
              expect(
                find.descendant(
                  of: find.byType(Dialog),
                  matching: find.text('نعم'),
                ),
                findsOneWidget,
              );
              expect(
                find.descendant(
                  of: find.byType(Dialog),
                  matching: find.text('لا'),
                ),
                findsOneWidget,
              );
            },
          );

          testWidgets(
            'Yes',
            (tester) async {
              final capturedContext = await _captureBuildContext(tester);

              final unit = ImagePickerService();

              expect(
                unit.showSourceSheet(context: capturedContext),
                completion(ImagePickerService.deleteImage),
              );

              await tester.pumpAndSettle();

              await tester.tap(
                find.descendant(
                  of: find.byType(IconButton),
                  matching: find.byIcon(Icons.delete),
                ),
              );
              await tester.pumpAndSettle();

              await tester.tap(
                find.descendant(
                  of: find.byType(Dialog),
                  matching: find.text('نعم'),
                ),
              );
            },
          );

          testWidgets(
            'No',
            (tester) async {
              final capturedContext = await _captureBuildContext(tester);

              final unit = ImagePickerService();

              expect(
                unit.showSourceSheet(context: capturedContext),
                completion(null),
              );

              await tester.pumpAndSettle();

              await tester.tap(
                find.descendant(
                  of: find.byType(IconButton),
                  matching: find.byIcon(Icons.delete),
                ),
              );
              await tester.pumpAndSettle();

              await tester.tap(
                find.descendant(
                  of: find.byType(Dialog),
                  matching: find.text('لا'),
                ),
              );

              Navigator.of(capturedContext).pop();
            },
          );
        },
      );
    },
  );

  group(
    'ImagePickerService => pickAndCropImage =>',
    () {
      setUp(_setUpPickAndCropImage);

      testWidgets(
        'From Camera',
        (tester) async {
          final capturedContext = await _captureBuildContext(tester);

          final unit = ImagePickerService();

          await expectLater(
            unit.pickAndCropImage(
              context: capturedContext,
              source: ImageSource.camera,
              cropStyle: CropStyle.circle,
            ),
            completion(
              predicate<CroppedFile>(
                (f) => f.path == '/path/foo/bar/CroppedFile',
              ),
            ),
          );

          verifyInOrder([
            (ImagePickerPlatform.instance as MockImagePickerPlatform)
                .getImageFromSource(
              source: ImageSource.camera,
              options: anyNamed('options'),
            ),
            (ImageCropperPlatform.instance as MockImageCropperPlatform)
                .cropImage(
              sourcePath: '/path/foo/bar/XFile',
              aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
              cropStyle: CropStyle.circle,
              uiSettings: anyNamed('uiSettings'),
            ),
          ]);
        },
      );
    },
  );
}

Future<BuildContext> _captureBuildContext(WidgetTester tester) async {
  late BuildContext capturedContext;

  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) {
            capturedContext = context;

            return const SizedBox();
          },
        ),
      ),
    ),
  );
  return capturedContext;
}

Future<void> _setUpPickAndCropImage() async {
  await _setUpPermissionHandler();

  await _setUpImagePicker();

  await _setUpImageCropper();
}

Future<void> _setUpImageCropper() async {
  final mockImageCropperPlatform = MockImageCropperPlatform();

  when(
    mockImageCropperPlatform.cropImage(
      sourcePath: '/path/foo/bar/XFile',
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      cropStyle: anyNamed('cropStyle'),
      uiSettings: anyNamed('uiSettings'),
    ),
  ).thenAnswer((_) async => CroppedFile('/path/foo/bar/CroppedFile'));

  ImageCropperPlatform.instance = mockImageCropperPlatform;
}

Future<void> _setUpImagePicker() async {
  final mockImagePickerPlatform = MockImagePickerPlatform();

  when(
    mockImagePickerPlatform.getImageFromSource(
      source: ImageSource.camera,
      options: anyNamed('options'),
    ),
  ).thenAnswer((_) async => XFile('/path/foo/bar/XFile'));

  ImagePickerPlatform.instance = mockImagePickerPlatform;
}

Future<void> _setUpPermissionHandler() async {
  final mockPermissionHandlerPlatform = MockPermissionHandlerPlatform();

  when(
    mockPermissionHandlerPlatform.requestPermissions(any),
  ).thenAnswer(
    (i) async => {i.positionalArguments[0][0]: PermissionStatus.granted},
  );

  PermissionHandlerPlatform.instance = mockPermissionHandlerPlatform;
}

class MockPermissionHandlerPlatform extends PermissionHandlerPlatform_
    with MockPlatformInterfaceMixin {}

class MockImagePickerPlatform extends ImagePickerPlatform_
    with MockPlatformInterfaceMixin {}

class MockImageCropperPlatform extends ImageCropperPlatform_
    with MockPlatformInterfaceMixin {}

void _setUp() {
  _registerImagePicker();
  _registerImageCropper();
}

void _registerImageCropper() {
  GetIt.I.registerSingleton(ImageCropper());
}

void _registerImagePicker() {
  GetIt.I.registerSingleton(ImagePicker());
}
