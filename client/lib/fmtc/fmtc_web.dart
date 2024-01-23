// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: avoid-redundant-async, avoid-unused-parameters

import 'package:flutter_map/flutter_map.dart';

/// FMTC Stub for version 9.0.0-dev.5 or older
/// until this issue is solved https://github.com/JaffaKetchup/flutter_map_tile_caching/issues/96
class FMTC {
  static const FMTC instance = FMTC();

  static Future<FMTC?> initialise({
    String? rootDirectory,
    FMTCSettings? settings,
    void Function(dynamic)? errorHandler,
    bool disableInitialisationSafety = false,
    bool debugMode = false,
  }) async {
    return instance;
  }

  FMTC get manage => instance;

  const FMTC();

  FMTC call(String _) => instance;

  FMTC operator [](String _) => instance;

  TileProvider? getTileProvider() => NetworkTileProvider();

  Future<void> createAsync() async {}
}

class FMTCSettings {
  const FMTCSettings({
    FMTCTileProviderSettings? defaultTileProviderSettings,
  });
}

class FMTCTileProviderSettings {
  FMTCTileProviderSettings({Duration? cachedValidDuration});
}
