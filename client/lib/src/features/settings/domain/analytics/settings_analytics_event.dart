part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class SettingsAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'settings';

  const SettingsAnalyticsEvent();
}

final class ThemeApply extends SettingsAnalyticsEvent {
  final ThemeChoice themeChoice;
  final bool isGreatFeastTheme;

  @override
  String get objectAction => 'theme_apply';

  @override
  Json get properties => {
    'theme_choice': themeChoice.name,
    'is_great_feast_theme': isGreatFeastTheme,
  };

  const ThemeApply({
    required this.themeChoice,
    required this.isGreatFeastTheme,
  });
}

final class UnsavedChangesPromptShow extends SettingsAnalyticsEvent {
  @override
  String get objectAction => 'unsaved_changes_prompt_show';

  const UnsavedChangesPromptShow();
}

final class UnsavedChangesPromptAnswer extends SettingsAnalyticsEvent {
  final bool isDiscarded;

  @override
  String get objectAction => 'unsaved_changes_prompt_answer';

  @override
  Json get properties => {'is_discarded': isDiscarded};

  const UnsavedChangesPromptAnswer({required this.isDiscarded});
}
