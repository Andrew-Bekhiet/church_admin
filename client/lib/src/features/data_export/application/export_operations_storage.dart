import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:file/file.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart' as p;
import 'package:rxdart/rxdart.dart';

class ExportOperationsStorage {
  static ExportOperationsStorage get I =>
      globalProviderContainer.read(_exportOperationsStorageProvider);
  static final _exportOperationsStorageProvider =
      Provider<ExportOperationsStorage>(
        (ref) => ExportOperationsStorage(
          dioClient: ref.read(dioProvider),
          fileSystem: ref.read(fileSystemProvider),
        ),
      );

  final Dio _dioClient;
  final FileSystem _fileSystem;

  const ExportOperationsStorage({
    required this._dioClient,
    required this._fileSystem,
  });

  Future<DataExportFile> saveFile({
    required String downloadUrl,
    required void Function(double) onProgress,
  }) async {
    final downloadUri = Uri.parse(downloadUrl);

    final file = await _getFileFromUri(downloadUri);
    await _dioClient.downloadUri(
      downloadUri,
      file.path,
      onReceiveProgress: (count, total) {
        if (total <= 0) return;

        onProgress(count / total);
      },
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

  Future<void> deleteSavedFiles() async {
    if (kIsWeb) return;

    final exportsDir = await getExportsDirectory();

    if (await exportsDir.exists()) await exportsDir.delete(recursive: true);
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
