import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_export/application/export_operations_storage.dart';
import 'package:dio/dio.dart';
import 'package:file/memory.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

void main() {
  setUp(() {
    registerFallbackValue(Uri.base);
    final mockPathProviderPlatform = MockPathProviderPlatform();
    when(
      mockPathProviderPlatform.getApplicationDocumentsPath,
    ).thenAnswer((_) async => '/');

    PathProviderPlatform.instance = mockPathProviderPlatform;
  });

  tearDown(() {
    reset(PathProviderPlatform.instance);
    resetGlobalProviderContainer();
  });

  test('saveFile downloads the file', () async {
    final mockDio = MockDio();
    final mockFileSystem = MemoryFileSystem();
    final testProgress = List.generate(10, (i) => i);
    const downloadUrl = 'https://example.com/file.zip';

    when(
      () => mockDio.downloadUri(
        captureAny(),
        captureAny(),
        onReceiveProgress: captureAny(named: 'onReceiveProgress'),
      ),
    ).thenAnswer((i) async {
      final onReceiveProgress = i.namedArguments[#onReceiveProgress];
      for (final progress in testProgress) {
        await onReceiveProgress?.call(progress, testProgress.length);
      }

      final savePath = i.positionalArguments[1] as String;
      mockFileSystem.file(savePath).createSync();

      final mockResponse = MockResponse();
      when(() => mockResponse.statusCode).thenReturn(200);
      return mockResponse;
    });

    final unit = ExportOperationsStorage(
      dioClient: mockDio,
      fileSystem: mockFileSystem,
      userDataWiper: MockUserDataWiper(),
    );

    int capturedProgressIndex = 0;
    final file = await unit.saveFile(
      downloadUrl: downloadUrl,
      onProgress: (progress) {
        expect(
          progress,
          closeTo(
            testProgress[capturedProgressIndex] / testProgress.length,
            0.001,
          ),
        );
        capturedProgressIndex++;
      },
    );

    expect(file, isA<DataExportFile>());
    expect(mockFileSystem.file(file.path).existsSync(), isTrue);
  });

  test('listSavedFiles returns the saved files', () async {
    final mockDio = MockDio();
    final mockFileSystem = MemoryFileSystem();

    final unit = ExportOperationsStorage(
      dioClient: mockDio,
      fileSystem: mockFileSystem,
      userDataWiper: MockUserDataWiper(),
    );
    final exportsDirectory = await unit.getExportsDirectory();

    expect(await unit.listSavedFiles(), isEmpty);

    final testFilePaths = List.generate(
      10,
      (i) => p.join(exportsDirectory.path, 'file$i.xlsx'),
    );
    for (final filePath in testFilePaths) {
      mockFileSystem.file(filePath).createSync();
    }

    expect(
      await unit.listSavedFiles(),
      testFilePaths
          .map(
            (filePath) => isA<DataExportFile>().having(
              (file) => file.path,
              'path',
              filePath,
            ),
          )
          .toList(),
    );
  });
}

final class MockDio extends Mock implements Dio {}

final class MockResponse extends Mock implements Response {}

final class MockPathProviderPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements PathProviderPlatform {}

final class MockUserDataWiper extends Mock implements UserDataWiper {}
