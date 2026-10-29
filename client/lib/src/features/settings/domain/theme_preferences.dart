import 'package:church_admin/src/features/settings/domain/theme_choice.dart';
import 'package:equatable/equatable.dart';

final class ThemePreferences extends Equatable {
  final ThemeChoice themeChoice;
  final bool greatFeastTheme;

  @override
  List<Object?> get props => [themeChoice, greatFeastTheme];

  const ThemePreferences({
    required this.themeChoice,
    required this.greatFeastTheme,
  });
}
