import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Polling helpers for a live app, where `pumpAndSettle` never returns while
/// a progress indicator or a live query keeps scheduling frames.
extension E2eWidgetTester on WidgetTester {
  static const Duration defaultTimeout = Duration(seconds: 30);
  static const Duration _pollInterval = Duration(milliseconds: 100);

  Future<Finder> waitFor(
    Finder finder, {
    Duration timeout = defaultTimeout,
  }) async {
    final deadline = DateTime.now().add(timeout);

    while (finder.evaluate().isEmpty) {
      if (DateTime.now().isAfter(deadline)) {
        throw _timedOut('Timed out after $timeout waiting for $finder');
      }
      await pump(_pollInterval);
    }

    return finder;
  }

  Future<void> waitForAbsent(
    Finder finder, {
    Duration timeout = defaultTimeout,
  }) async {
    final deadline = DateTime.now().add(timeout);

    while (finder.evaluate().isNotEmpty) {
      if (DateTime.now().isAfter(deadline)) {
        throw _timedOut(
          'Timed out after $timeout waiting for $finder to go',
        );
      }
      await pump(_pollInterval);
    }
  }

  Future<void> tapOn(Finder finder, {Duration timeout = defaultTimeout}) async {
    final deadline = DateTime.now().add(timeout);
    await waitFor(finder, timeout: timeout);
    final tappable = finder.first.hitTestable();

    while (tappable.evaluate().isEmpty) {
      if (DateTime.now().isAfter(deadline)) {
        throw _timedOut('Timed out after $timeout waiting to tap $finder');
      }
      await ensureVisible(finder.first);
      await pump(_pollInterval);
    }

    await tap(tappable);
    await pump(_pollInterval);
  }

  Future<void> typeInto(Finder finder, String text) async {
    await tapOn(finder);
    await enterText(finder.first, text);
    await pump(_pollInterval);
  }

  Future<void> idle([Duration duration = const Duration(seconds: 1)]) async {
    final deadline = DateTime.now().add(duration);

    while (DateTime.now().isBefore(deadline)) {
      await pump(_pollInterval);
    }
  }

  TestFailure _timedOut(String reason) {
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

  Finder labelledField(String label) => find.byWidgetPredicate(
    (widget) =>
        widget is InputDecorator && widget.decoration.labelText == label,
  );
}
