import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_map_tile_caching/flutter_map_tile_caching.dart';

class FMTCInit implements Initializer {
  const FMTCInit();

  @override
  Future<void> initialize() async {
    if (kIsWeb) return;

    await FMTCObjectBoxBackend().initialise();

    FMTCTileProviderSettings(
      cachedValidDuration: const Duration(days: 30),
    );

    await const FMTCStore('default').manage.create();
  }
}
