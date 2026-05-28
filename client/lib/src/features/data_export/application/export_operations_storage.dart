import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:file/file.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart' as p;
import 'package:rxdart/rxdart.dart';

class ExportOperationsStorage {
  static final _exportOperationsStorageProvider =
      Provider<ExportOperationsStorage>(
        (ref) => ExportOperationsStorage(
          dioClient: ref.read(dioProvider),
          fileSystem: ref.read(fileSystemProvider),
        ),
      );

  static ExportOperationsStorage get I =>
      globalProviderContainer.read(_exportOperationsStorageProvider);

  final Dio _dioClient;
  final FileSystem _fileSystem;

  const ExportOperationsStorage({
    required Dio dioClient,
    required FileSystem fileSystem,
  }) : _dioClient = dioClient,
       _fileSystem = fileSystem;

  Future<DataExportFile> saveFile({
    required String downloadUrl,
    required void Function(double) onProgress,
  }) async {
    final downloadUri = Uri.parse(downloadUrl);

    final file = await _getFileFromUri(downloadUri);
    await _dioClient.downloadUri(
      downloadUri,
      file.path,
      onReceiveProgress: (count, total) => onProgress(count / total),
    );

    return DataExportFile.fromFile(file);
  }

  Future<List<DataExportFile>> listSavedFiles() async {
    final exportsDir = await _maybeCreateExportsDirectory();

    return exportsDir
        .list()
        .whereType<File>()
        .map(DataExportFile.fromFile)
        .toList();
  }

  Future<File> _getFileFromUri(Uri uri) async {
    final exportsDir = await _maybeCreateExportsDirectory();

    return _fileSystem.file(p.join(exportsDir.path, uri.pathSegments.last));
  }

  Future<Directory> _maybeCreateExportsDirectory() async {
    final exportsDir = await getExportsDirectory();

    return exportsDir.create(recursive: true);
  }

  @visibleForTesting
  Future<Directory> getExportsDirectory() async {
    final documentsDir = await p.getApplicationDocumentsDirectory();

    return _fileSystem.directory(
      p.join(documentsDir.path, 'exports'),
    );
  }
}
