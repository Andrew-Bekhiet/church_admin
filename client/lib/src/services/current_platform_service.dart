import 'package:church_admin/church_admin.dart';
import 'package:universal_platform/universal_platform.dart';

class CurrentPlatformService {
  static CurrentPlatformService get I =>
      globalProviderContainer.read(currentPlatformServiceProvider);

  final PlatformValue? _override;

  const CurrentPlatformService([this._override]);

  PlatformValue get effectiveValue {
    if (_override != null) return _override!;

    if (isAndroid) {
      return PlatformValue.android;
    } else if (isIOS) {
      return PlatformValue.ios;
    } else if (isWeb) {
      return PlatformValue.web;
    } else if (isWindows) {
      return PlatformValue.windows;
    } else if (isMacOS) {
      return PlatformValue.macos;
    } else if (isLinux) {
      return PlatformValue.linux;
    } else {
      return throw UnsupportedError('Unsupported platform');
    }
  }

  bool get isNotOverriden => _override == null;

  bool get isAndroid => _override?.isAndroid ?? UniversalPlatform.isAndroid;
  bool get isIOS => _override?.isIOS ?? UniversalPlatform.isIOS;
  bool get isWeb => _override?.isWeb ?? UniversalPlatform.isWeb;
  bool get isWindows => _override?.isWindows ?? UniversalPlatform.isWindows;
  bool get isMacOS => _override?.isMacOS ?? UniversalPlatform.isMacOS;
  bool get isLinux => _override?.isLinux ?? UniversalPlatform.isLinux;

  bool get isDesktop => _override?.isDesktop ?? UniversalPlatform.isDesktop;
  bool get isDesktopOrWeb =>
      _override?.isDesktopOrWeb ?? UniversalPlatform.isDesktopOrWeb;
}

enum PlatformValue {
  android('android'),
  ios('ios'),
  web('web'),
  windows('windows'),
  macos('macos'),
  linux('linux');

  final String _value;

  const PlatformValue(this._value);

  bool get isAndroid => _value == 'android';
  bool get isIOS => _value == 'ios';
  bool get isWeb => _value == 'web';
  bool get isWindows => _value == 'windows';
  bool get isMacOS => _value == 'macos';
  bool get isLinux => _value == 'linux';

  bool get isDesktop => isLinux || isMacOS || isWindows;
  bool get isDesktopOrWeb => isDesktop || isWeb;
}
