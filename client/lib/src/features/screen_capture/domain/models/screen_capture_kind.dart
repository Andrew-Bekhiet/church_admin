enum ScreenCaptureKind {
  screenshot('screenshot'),
  screenRecording('screen_recording');

  static ScreenCaptureKind byValue(String value) =>
      values.firstWhere((kind) => kind.value == value);

  final String value;

  const ScreenCaptureKind(this.value);
}
