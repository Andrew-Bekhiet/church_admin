import 'package:church_admin/church_admin.dart';
import 'package:flutter_map_tile_caching/flutter_map_tile_caching.dart';

class FMTCInit implements Initializer {
  const FMTCInit();

  @override
  Future<void> initialize() async {
    await FMTC.initialise(
      settings: FMTCSettings(
        defaultTileProviderSettings: FMTCTileProviderSettings(
          cachedValidDuration: const Duration(days: 30),
        ),
      ),
    );

    await FMTC.instance.call('default').manage.createAsync();
  }
}
