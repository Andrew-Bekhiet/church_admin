enum PlatformValue {
  android('android'),
  ios('ios'),
  web('web'),
  windows('windows'),
  macos('macos'),
  linux('linux');

  final String _value;

  bool get isAndroid => _value == 'android';
  bool get isIOS => _value == 'ios';
  bool get isWeb => _value == 'web';
  bool get isWindows => _value == 'windows';
  bool get isMacOS => _value == 'macos';
  bool get isLinux => _value == 'linux';

  bool get isDesktop => isLinux || isMacOS || isWindows;
  bool get isDesktopOrWeb => isDesktop || isWeb;

  const PlatformValue(this._value);
}
