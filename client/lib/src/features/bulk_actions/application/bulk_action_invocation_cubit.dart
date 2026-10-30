import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BulkActionInvocationCubit extends Cubit<BulkActionInvocationState> {
  final AnalyticsService _analytics;
  final LoggingService _logging;

  BulkActionInvocationCubit({
    AnalyticsService? analyticsService,
    LoggingService? loggingService,
  }) : _analytics = analyticsService ?? AnalyticsService.I,
       _logging = loggingService ?? LoggingService.I,
       super(const BulkActionIdle());

  Future<void> invoke({
    required String actionKey,
    required Set<Object?> items,
    required Future<void> Function() run,
  }) async {
    if (state is BulkActionRunning) return;

    _analytics.track(BulkActionInvoke(actionKey, items));
    emit(BulkActionRunning(actionKey));

    try {
      await Future.sync(run);
    } on Object catch (error, stackTrace) {
      await _logging.error(
        LogRecord(
          message: 'Bulk action $actionKey failed',
          moduleName: '$BulkActionInvocationCubit',
          error: error,
          stackTrace: stackTrace,
        ),
      );
    }

    if (isClosed) return;

    emit(const BulkActionIdle());
  }
}
