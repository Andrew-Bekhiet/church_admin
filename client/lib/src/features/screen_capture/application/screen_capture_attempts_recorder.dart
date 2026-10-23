import 'dart:async';

import 'package:church_admin/church_admin.dart';

class ScreenCaptureAttemptsRecorder {
  static ScreenCaptureAttemptsRecorder get I =>
      globalProviderContainer.read(screenCaptureAttemptsRecorderProvider);

  static const String platformChannelName =
      'church_admin/screen_capture_attempts';

  final Stream<ScreenCaptureKind> _attemptEventsStream;
  final AuthBloc _authBloc;
  final ScreenCaptureAttemptsDAO _screenCaptureAttempts;
  final LoggingService _logging;

  ScreenCaptureAttemptsRecorder({
    required this._attemptEventsStream,
    required this._authBloc,
    required this._screenCaptureAttempts,
    required this._logging,
  });

  StreamSubscription<void> recordAttemptsWhileSignedIn() {
    return _attemptEventsStream
        .where((_) => _authBloc.currentUserData != null)
        .asyncMap(_screenCaptureAttempts.recordAttempt)
        .listen(null, onError: _reportUnrecordedAttempt);
  }

  void _reportUnrecordedAttempt(Object error, StackTrace stackTrace) {
    unawaited(
      _logging.error(
        LogRecord(
          moduleName: 'ScreenCaptureAttemptsRecorder',
          eventName: 'recordAttempt',
          error: error,
          stackTrace: stackTrace,
        ),
      ),
    );
  }
}
