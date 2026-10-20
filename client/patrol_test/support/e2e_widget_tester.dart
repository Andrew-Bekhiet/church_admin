import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

/// Polling helpers for a live app, where `pumpAndSettle` never returns while
/// a progress indicator or a live query keeps scheduling frames.
extension E2eWidgetTester on WidgetTester {
  static const Duration defaultTimeout = Duration(seconds: 30);
  static const Duration pollInterval = Duration(milliseconds: 100);

  Future<Finder> waitFor(
    Finder finder, {
    Duration timeout = defaultTimeout,
  }) async {
    await _pollUntil(
      () => finder.evaluate().isNotEmpty,
      timeout: timeout,
      waitingFor: finder.toString(describeSelf: true),
    );

    return finder;
  }

  Future<void> waitForAbsent(
    Finder finder, {
    Duration timeout = defaultTimeout,
  }) => _pollUntil(
    () => finder.evaluate().isEmpty,
    timeout: timeout,
    waitingFor: '${finder.toString(describeSelf: true)} to go',
  );

  Future<void> tapOn(Finder finder, {Duration timeout = defaultTimeout}) async {
    final deadline = DateTime.now().add(timeout);
    final target = finder.first;
    final tappable = target.hitTestable();
    await waitFor(finder, timeout: timeout);

    while (tappable.evaluate().isEmpty) {
      if (finder.evaluate().isEmpty) {
        throw failureShowingScreen(
          '${finder.toString(describeSelf: true)} left the tree before it '
          'became tappable; wait for its screen to settle before tapping',
        );
      }
      if (DateTime.now().isAfter(deadline)) {
        throw failureShowingScreen(
          'Timed out after $timeout waiting to tap ${finder.toString(describeSelf: true)}',
        );
      }
      await ensureVisible(target);
      await pump(pollInterval);
    }

    await tap(tappable);
    await pump(pollInterval);
  }

  Future<void> typeInto(Finder finder, String text) async {
    await tapOn(finder);
    await enterText(finder.first, text);
    await pump(pollInterval);
  }

  Future<void> _pollUntil(
    bool Function() isDone, {
    required Duration timeout,
    required String waitingFor,
  }) async {
    final deadline = DateTime.now().add(timeout);

    while (!isDone()) {
      if (DateTime.now().isAfter(deadline)) {
        throw failureShowingScreen(
          'Timed out after $timeout waiting for $waitingFor',
        );
      }
      await pump(pollInterval);
    }
  }

  TestFailure failureShowingScreen(String reason) {
    final onScreen = find
        .byType(Text)
        .evaluate()
        .map((element) => element.widget)
        .whereType<Text>()
        .map((text) => text.data ?? text.textSpan?.toPlainText())
        .nonNulls
        .toSet();

    return TestFailure('$reason\nOn screen: ${onScreen.join(' | ')}');
  }

  Finder viewableObject(String id) => find.byWidgetPredicate(
    (widget) => switch (widget) {
      ViewableObjectWidget(object: ViewableWithID(id: final objectId)) =>
        objectId == id,
      _ => false,
    },
  );
}
