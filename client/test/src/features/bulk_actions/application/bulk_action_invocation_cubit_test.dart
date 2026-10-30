import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/recording_analytics_provider.dart';

class RejectingLoggingService extends FakeLoggingService {
  @override
  Future<void> error(LogRecord record) async =>
      throw StateError('logging provider down');
}

void main() {
  final mina = Person(id: 'p1', name: 'مينا');

  late RecordingAnalyticsProvider analytics;
  late FakeLoggingService logging;

  setUp(() {
    analytics = RecordingAnalyticsProvider();
    logging = FakeLoggingService();
  });

  BulkActionInvocationCubit buildCubit() => BulkActionInvocationCubit(
    analyticsService: AnalyticsService([analytics], FakeLoggingService()),
    loggingService: logging,
  );

  blocTest<BulkActionInvocationCubit, BulkActionInvocationState>(
    'invoking an action runs it while running and is idle once it returns',
    build: buildCubit,
    act: (cubit) => cubit.invoke(
      actionKey: 'show_names',
      items: {mina},
      run: () async {},
    ),
    expect: () => const [BulkActionRunning('show_names'), BulkActionIdle()],
  );

  blocTest<BulkActionInvocationCubit, BulkActionInvocationState>(
    'invoking an action tracks which action ran on how many',
    build: buildCubit,
    act: (cubit) => cubit.invoke(
      actionKey: 'show_names',
      items: {mina},
      run: () async {},
    ),
    verify: (_) => expect(
      analytics.trackedEventsOf<BulkActionInvoke>().map((e) => e.properties),
      [
        {'action': 'show_names', 'entity_type': 'person', 'selected_count': 1},
      ],
    ),
  );

  blocTest<BulkActionInvocationCubit, BulkActionInvocationState>(
    'an action invoked while another runs is ignored',
    build: buildCubit,
    act: (cubit) {
      final firstRun = Completer<void>();
      unawaited(
        cubit.invoke(
          actionKey: 'show_names',
          items: {mina},
          run: () => firstRun.future,
        ),
      );
      unawaited(
        cubit.invoke(actionKey: 'other', items: {mina}, run: () async {}),
      );
      firstRun.complete();
    },
    expect: () => const [BulkActionRunning('show_names'), BulkActionIdle()],
    verify: (_) =>
        expect(analytics.trackedEventsOf<BulkActionInvoke>(), hasLength(1)),
  );

  blocTest<BulkActionInvocationCubit, BulkActionInvocationState>(
    'an action that fails asynchronously is logged',
    build: buildCubit,
    act: (cubit) => cubit.invoke(
      actionKey: 'show_names',
      items: {mina},
      run: () async => throw StateError('offline'),
    ),
    expect: () => const [BulkActionRunning('show_names'), BulkActionIdle()],
    verify: (_) => expect(
      logging.reportedErrors.map((record) => record.message),
      ['Bulk action show_names failed'],
    ),
  );

  blocTest<BulkActionInvocationCubit, BulkActionInvocationState>(
    'an action that throws before returning its future is logged',
    build: buildCubit,
    act: (cubit) => cubit.invoke(
      actionKey: 'reject',
      items: {mina},
      run: () => throw StateError('rejected before starting'),
    ),
    verify: (_) => expect(
      logging.reportedErrors.map((record) => record.message),
      ['Bulk action reject failed'],
    ),
  );

  blocTest<BulkActionInvocationCubit, BulkActionInvocationState>(
    'a failing logger still lets the next action run',
    build: () => BulkActionInvocationCubit(
      analyticsService: AnalyticsService([analytics], FakeLoggingService()),
      loggingService: RejectingLoggingService(),
    ),
    act: (cubit) => cubit.invoke(
      actionKey: 'show_names',
      items: {mina},
      run: () async => throw StateError('offline'),
    ),
    expect: () => const [BulkActionRunning('show_names'), BulkActionIdle()],
  );

  blocTest<BulkActionInvocationCubit, BulkActionInvocationState>(
    'closing while an action runs emits nothing after it returns',
    build: buildCubit,
    act: (cubit) async {
      final run = Completer<void>();
      final invocation = cubit.invoke(
        actionKey: 'show_names',
        items: {mina},
        run: () => run.future,
      );
      await cubit.close();
      run.complete();
      await invocation;
    },
    expect: () => const [BulkActionRunning('show_names')],
  );
}
