import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart' as p;

class LegacyTileCacheDeletionInit implements Initializer {
  const LegacyTileCacheDeletionInit();

  @override
  Future<void> initialize() async {
    if (kIsWeb) return;

    final fileSystem = globalProviderContainer.read(fileSystemProvider);
    final documentsDirectory = await p.getApplicationDocumentsDirectory();
    final legacyTileCacheDirectory = fileSystem.directory(
      fileSystem.path.join(documentsDirectory.path, 'fmtc'),
    );

    if (!await legacyTileCacheDirectory.exists()) return;

    await legacyTileCacheDirectory.delete(recursive: true);
  }
}
