import 'package:church_admin/church_admin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart' as p;
import 'package:rxdart/rxdart.dart';
import 'package:universal_io/universal_io.dart';

class ExportOperationsStorage {
  static final _exportOperationsStorageProvider =
      Provider<ExportOperationsStorage>((ref) => ExportOperationsStorage());

  static ExportOperationsStorage get I =>
      globalProviderContainer.read(_exportOperationsStorageProvider);

  late final _dioClient = globalProviderContainer.read(dioProvider);

  ExportOperationsStorage();

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

    return File(p.join(exportsDir.path, uri.pathSegments.last));
  }

  Future<Directory> _maybeCreateExportsDirectory() async {
    final documentsDir = await p.getApplicationDocumentsDirectory();

    final exportsDir = Directory(p.join(documentsDir.path, 'exports'));

    return exportsDir.create(recursive: true);
  }
}
