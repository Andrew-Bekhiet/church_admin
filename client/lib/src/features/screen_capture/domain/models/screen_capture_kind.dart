import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

enum ScreenCaptureKind {
  screenshot('screenshot', Enum_ScreenCaptureKind.SCREENSHOT),
  screenRecording('screen_recording', Enum_ScreenCaptureKind.SCREEN_RECORDING);

  static ScreenCaptureKind? byValueOrNull(String value) =>
      values.firstWhereOrNull((kind) => kind.value == value);

  final String value;
  final Enum_ScreenCaptureKind backendKind;

  const ScreenCaptureKind(this.value, this.backendKind);
}
