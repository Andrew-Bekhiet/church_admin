import 'package:collection/collection.dart';

enum ScreenCaptureKind {
  screenshot('screenshot'),
  screenRecording('screen_recording');

  static ScreenCaptureKind? byValueOrNull(String value) =>
      values.firstWhereOrNull((kind) => kind.value == value);

  final String value;

  const ScreenCaptureKind(this.value);
}
