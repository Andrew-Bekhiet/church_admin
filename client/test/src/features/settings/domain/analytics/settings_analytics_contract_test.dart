import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('settings analytics contract', () {
    const contracts = <(AnalyticsEvent, String, Json)>[
      (
        ThemeApply(themeChoice: ThemeChoice.dark, isGreatFeastTheme: true),
        'settings:theme_apply',
        {'theme_choice': 'dark', 'is_great_feast_theme': true},
      ),
      (
        UnsavedChangesPromptShow(),
        'settings:unsaved_changes_prompt_show',
        {},
      ),
      (
        UnsavedChangesPromptAnswer(isDiscarded: true),
        'settings:unsaved_changes_prompt_answer',
        {'is_discarded': true},
      ),
    ];

    for (final (event, expectedName, expectedProperties) in contracts) {
      final sentKeys = expectedProperties.isEmpty
          ? 'no properties'
          : expectedProperties.keys.join(', ');

      test('$expectedName sends $sentKeys', () {
        expect(event.name, expectedName);
        expect(event.properties, expectedProperties);
      });
    }

    const themeChoices = <(bool?, String)>[
      (true, 'dark'),
      (false, 'light'),
      (null, 'system'),
    ];

    for (final (darkTheme, expectedChoice) in themeChoices) {
      test(
        'a dark theme setting of $darkTheme is the $expectedChoice theme',
        () {
          expect(ThemeChoice.of(darkTheme).name, expectedChoice);
        },
      );
    }
  });
}
