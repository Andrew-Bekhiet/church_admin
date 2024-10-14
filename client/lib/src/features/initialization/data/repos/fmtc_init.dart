import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class FMTCInit implements Initializer {
  const FMTCInit();

  @override
  Future<void> initialize() async {
    if (kIsWeb) return;

    await FMTC.initialise(
      settings: FMTCSettings(
        defaultTileProviderSettings: FMTCTileProviderSettings(
          cachedValidDuration: const Duration(days: 30),
        ),
      ),
    );

    await FMTC.instance('default').manage.createAsync();
  }
}
