import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

abstract final class FontLicenses {
  static const Map<String, String> _licenseAssetByFontFamily = {
    AppTypography.cairo: 'assets/fonts/OFL-Cairo.txt',
    AppTypography.elMessiri: 'assets/fonts/OFL-ElMessiri.txt',
    AppTypography.amiri: 'assets/fonts/OFL-Amiri.txt',
  };

  static void register() {
    for (final MapEntry(key: fontFamily, value: licenseAsset)
        in _licenseAssetByFontFamily.entries) {
      LicenseRegistry.addLicense(() async* {
        yield LicenseEntryWithLineBreaks([
          fontFamily,
        ], await rootBundle.loadString(licenseAsset));
      });
    }
  }
}
